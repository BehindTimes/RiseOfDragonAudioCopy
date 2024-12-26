#include <cstdlib>
#include <cstring>
#include <cstdio>
#include <vector>

int main(int argc, char* argv[])
{
	if (argc < 4)
	{
		return EXIT_FAILURE;
	}

	FILE* fOut = NULL;
	bool valid = true;
	uint32_t total_size = 0;
	std::vector<std::vector<char>> vecFileData;
	const size_t HEADER_WITHOUT_SIZE = 40;
	const size_t HEADER_WITH_SIZE = 44;
	const size_t WAV_SIZE = 4;

	for (int index = 1; index < argc - 1; ++index)
	{
		FILE* temp = NULL;
		fopen_s(&temp, argv[index], "rb");
		if (!temp)
		{
			valid = false;
			break;
		}
		fseek(temp, 0L, SEEK_END);
		size_t sz = ftell(temp);
		std::vector<char> data;
		if (sz < WAV_SIZE)
		{
			fclose(temp);
			return EXIT_FAILURE;
		}
		total_size += (sz - HEADER_WITH_SIZE);
		data.resize(sz);
		fseek(temp, 0L, SEEK_SET);
		fread(data.data(), sizeof(char), sz, temp);
		fclose(temp);
		vecFileData.push_back(data);
	}

	if (!valid)
	{
		return EXIT_FAILURE;
	}

	fopen_s(&fOut, argv[argc - 1], "wb");
	if (!fOut)
	{
		return EXIT_FAILURE;
	}
	fwrite(vecFileData[0].data(), sizeof(char), HEADER_WITHOUT_SIZE, fOut);
	fwrite(&total_size, sizeof(uint32_t), 1, fOut);

	for (auto curVec : vecFileData)
	{
		fwrite(curVec.data() + HEADER_WITH_SIZE, sizeof(char), curVec.size() - HEADER_WITH_SIZE, fOut);
	}

	fclose(fOut);
	
	fOut = NULL;

	return EXIT_SUCCESS;
}