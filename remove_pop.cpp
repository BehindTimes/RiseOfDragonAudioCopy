#include <cstdlib>
#include <cstring>
#include <cstdio>
#include <vector>

int processEndOffset(size_t sz,unsigned char* data)
{
	if (sz < 44 || sz > 500000)
	{
		return EXIT_FAILURE;
	}

	unsigned int count = 0;
	bool changed = false;

	unsigned char writeval = data[sz - 21];
	for (size_t index = sz - 20; index < sz; ++index)
	{
		unsigned char temp = data[index];
		unsigned char diff = 0;
		if (writeval > temp)
		{
			diff = writeval - temp;
		}
		else
		{
			diff = temp - writeval;
		}
		if (diff > 3)
		{
			changed = true;
			continue;
		}
		count++;
	}
	if (count > 8)
	{
		if (changed == true)
		{
			for (size_t index = sz - 20; index < sz; ++index)
			{
				data[index] = writeval;
			}
			return EXIT_SUCCESS;
		}
	}
	return EXIT_FAILURE;
}


int processOffSize(FILE* temp, size_t sz, const char* szFile)
{
	if (temp == NULL)
	{
		return EXIT_FAILURE;
	}
	std::vector<unsigned char> data;

	data.resize(sz / sizeof(unsigned char));
	fseek(temp, 0L, SEEK_SET);
	fread(data.data(), sizeof(unsigned char), data.size(), temp);
	fclose(temp);

	unsigned int count = 0;
	bool changed = false;

	for (size_t index = data.size() - 1; index > data.size() - 20; --index)
	{
		if (data[index] == 0x80 && data[index - 1] == 0x80)
		{
			if (count < 12)
			{
				for (size_t temp = 0; temp < count; ++temp)
				{
					data[index + 1 + temp] = 0x80;
					changed = true;
				}
			}
			count = 0;
			index -= 1;
		}
		else
		{
			count++;
		}
	}

	int change1 = processEndOffset(sz * sizeof(unsigned char), (unsigned char*)data.data());

	if (changed || change1 == EXIT_SUCCESS)
	{
		FILE* fOut = NULL;

		fopen_s(&fOut, szFile, "wb");
		if (!fOut)
		{
			return EXIT_FAILURE;
		}
		fwrite(data.data(), sizeof(unsigned char), data.size(), fOut);
		fclose(fOut);
	}

	return EXIT_SUCCESS;
}

int main(int argc, char* argv[])
{
	FILE* fOut = NULL;
	bool valid = true;
	uint32_t total_size = 0;
	std::vector<std::vector<char>> vecFileData;
	const size_t HEADER_WITHOUT_SIZE = 40;
	const size_t HEADER_WITH_SIZE = 44;
	const size_t WAV_SIZE = 4;

	if (argc < 2)
	{
		return EXIT_FAILURE;
	}

	FILE* temp = NULL;
	fopen_s(&temp, argv[1], "rb");
	if (!temp)
	{
		return EXIT_FAILURE;
	}

	fseek(temp, 0L, SEEK_END);
	size_t sz = ftell(temp);
	if (sz % sizeof(uint32_t) != 0)
	{
		return processOffSize(temp, sz, argv[1]);
	}
	else
	{
		std::vector<uint32_t> data;
		if (sz < WAV_SIZE)
		{
			fclose(temp);
			return EXIT_FAILURE;
		}

		data.resize(sz / sizeof(uint32_t));
		fseek(temp, 0L, SEEK_SET);
		fread(data.data(), sizeof(uint32_t), data.size(), temp);
		fclose(temp);

		size_t lastpos = data.size();
		for (size_t index = data.size() - 1; index > HEADER_WITH_SIZE / sizeof(uint32_t); --index)
		{
			if (data[index] == 0x80808080)
			{
				if (lastpos - index <= 12 && lastpos - index > 1)
				{
					for (size_t index1 = index; index1 < lastpos; ++index1)
					{
						data[index1] = 0x80808080;
					}
				}
				lastpos = index;
			}
		}

		processEndOffset(sz, (unsigned char*)data.data());

		fopen_s(&fOut, argv[1], "wb");
		if (!fOut)
		{
			return EXIT_FAILURE;
		}
		fwrite(data.data(), sizeof(uint32_t), data.size(), fOut);
		fclose(fOut);
	}

	return EXIT_SUCCESS;
}
