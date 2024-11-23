using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RiseOfDragonDirSearch
{
    internal class dirSearch
    {
        public void SearchDir(string strDir)
        {
            string[] strFiles = Directory.GetFiles(strDir, "*.wav");
            using (StreamWriter writetext = new StreamWriter("audio.txt"))
            {
                foreach (string strCurFile in strFiles)
                {
                    string strFileName = Path.GetFileName(strCurFile);

                    writetext.WriteLine(strFileName + ",");
                }
            }
        }
    }
}
