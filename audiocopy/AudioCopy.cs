using System;
using System.IO;
using System.Xml;
using System.Collections.Generic;

namespace audiocopy
{
    internal class AudioCopy
    {
        public void copyAudio()
        {
            string baseDir = Directory.GetCurrentDirectory();
            string strOutDir = Path.Combine(baseDir, "WAV", "audio_back");
            string strInAud = Path.Combine(baseDir, "WAV");
            string strFileData = Path.Combine(baseDir, "RoDData.xml");

            if (!File.Exists(strFileData))
            {
                Console.WriteLine("[ERROR] RoDData.xml not found.");
                return;
            }

            if (Directory.Exists(strOutDir))
            {
                Directory.Delete(strOutDir, true);
            }
            Directory.CreateDirectory(strOutDir);

            // Build a case-insensitive map of all WAV files in the directory
            var fileMap = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
            if (Directory.Exists(strInAud)) {
                foreach (var f in Directory.GetFiles(strInAud)) {
                    // Manually check extension to bypass Linux *.wav case-sensitivity
                    if (f.EndsWith(".wav", StringComparison.OrdinalIgnoreCase)) {
                        fileMap[Path.GetFileName(f)] = f;
                    }
                }
            }

            XmlDocument doc = new XmlDocument();
            XmlNamespaceManager namespaces = new XmlNamespaceManager(doc.NameTable);
            namespaces.AddNamespace("ns", "urn:hl7-org:v3");
            doc.Load(strFileData);

            foreach(XmlElement curElement in doc.DocumentElement.ChildNodes)
            {
                if (curElement == null) continue;
                string strFile = curElement.Name;
                if(strFile.Contains("Unknown")) continue;

                foreach (XmlElement tempElement in curElement)
                {
                    if (tempElement == null) break;
                    XmlNode numNode = tempElement.SelectSingleNode("descendant::Audio");
                    if (numNode != null && tempElement.HasAttribute("ID"))
                    {
                        int tempId = int.Parse(tempElement.GetAttribute("ID"));
                        string strOutFile = "aud" + strFile + tempId.ToString() + ".wav";
                        string expectedName = Path.GetFileNameWithoutExtension(numNode.InnerText) + ".wav";

                        // Look up the file ignoring case!
                        if (fileMap.TryGetValue(expectedName, out string actualFilePath))
                        {
                            string strTempOut = Path.Combine(strOutDir, strOutFile);
                            File.Copy(actualFilePath, strTempOut, true);
                        }
                    }
                }
            }
            Console.WriteLine("Renaming Rise of the Dragon Files Complete!");
        }
    }
}
