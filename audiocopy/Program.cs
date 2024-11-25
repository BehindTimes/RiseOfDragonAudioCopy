// See https://aka.ms/new-console-template for more information
using audiocopy;

Console.WriteLine("Renaming Rise of the Dragon Files!");

AudioCopy ac = new AudioCopy();
ac.copyAudio();

Console.WriteLine("Copy Directory \"audio_back\" to the location of Rise of the Dragon, renaming it to \"audio\"");
