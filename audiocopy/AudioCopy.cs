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
            string strOutDir = "F:\\GOG Galaxy\\Games\\Rise of the Dragon\\audio\\";
            string strInAud = "F:\\GOG Galaxy\\Games\\Rise of the Dragon\\audio_back\\";
            string strFileData = "F:\\GOG Galaxy\\Games\\Rise of the Dragon\\RoDData.xml";

            if (!File.Exists(strFileData))
            {
                return;
            }

            XmlDocument doc = new XmlDocument();
            XmlNamespaceManager namespaces = new XmlNamespaceManager(doc.NameTable);
            namespaces.AddNamespace("ns", "urn:hl7-org:v3");

            doc.Load(strFileData);
            if (doc.DocumentElement == null)
            {
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
                        }
                    }
                }
            }
        }
    }
}
