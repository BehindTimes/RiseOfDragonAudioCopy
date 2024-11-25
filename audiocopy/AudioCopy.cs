using System;
using System.Collections.Generic;
using System.Formats.Tar;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace audiocopy
{
    internal class AudioCopy
    {
        public void copyAudio()
        {
            string strOutDir = Directory.GetCurrentDirectory() + "\\audio_back\\";
            string strInAud = Directory.GetCurrentDirectory() + "\\";
            string strFileData = Directory.GetCurrentDirectory() + "\\RoDData.xml";

            if (!File.Exists(strFileData))
            {
                return;
            }

            if (Directory.Exists(strOutDir))
            {
                Console.WriteLine("Make sure the directory \"audio_back\" does not exist");
                return;
            }Directory.CreateDirectory(strOutDir);

            XmlDocument doc = new XmlDocument();
            XmlNamespaceManager namespaces = new XmlNamespaceManager(doc.NameTable);
            namespaces.AddNamespace("ns", "urn:hl7-org:v3");

            doc.Load(strFileData);
            if (doc.DocumentElement == null)
            {
                Console.WriteLine("RoDData.xml is incorrect");
                return;
            }
            foreach(XmlElement? curElement in doc.DocumentElement.ChildNodes)
            {
                if (curElement == null)
                {
                    continue;
                }
                string strFile = curElement.Name;
                if(strFile.Contains("Unknown"))
                {
                    continue;
                }
                foreach (XmlElement? tempElement in curElement)
                {
                    if (tempElement == null)
                    {
                        break;
                    }
                    XmlNode? numNode = tempElement.SelectSingleNode("descendant::Audio");
                    if (numNode != null)
                    {
                        if(tempElement.HasAttribute("ID"))
                        {
                            int tempId = int.Parse(tempElement.GetAttribute("ID"));
                            string strOutFile = "aud" + strFile + tempId.ToString() + ".wav";
                            string strAudioFile = numNode.InnerText;
                            if(strAudioFile.Contains("0201"))
                            {
                                int j = 9;
                            }
                            strAudioFile = strAudioFile.Replace("SD4", "wav");
                            string strTempIn = strInAud + strAudioFile;
                            string strTempOut = strOutDir + strOutFile;
                            if(File.Exists(strTempIn) && !File.Exists(strTempOut))
                            {
                                File.Copy(strTempIn, strTempOut);
                            }
                            else
                            {
                                Console.WriteLine("File not copied");
                            }
                        }
                    }
                }
            }
        }
    }
}
