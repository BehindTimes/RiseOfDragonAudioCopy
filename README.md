The RoDData.xml has a list of every dialog in the game, the amount of time it should be played, and any Sega PCM Audio files associated with it.

The audio.csv is a small (less organized) file that keeps track of what audio files belong to what dialogs.  This will be helpful trying to break up or combine audio.  Just look for anything more than 3 colums (audio file, scene file, dialog number), and that will show you what problematic audio files need to be worked on, and what audio files haven't been associated yet.

While this isn't ready for primetime, it should be a start to help get the ScummVM version of Rise of the Dragon to use the Sega CD voice acting after these issues are corrected.

Instructions:

Copy over the files from the SegaCD to a directory of your choice.
Compile the Sega CD PCM Utility (https://forums.sonicretro.org/index.php?threads%2Fmcd_pcm-sega-cd-pcm-utility.24151%2F)
Run makewav.bat in the directory the SD4 files are located in.
Edit the parameters in public void copyAudio in AudioCopy.cs to point to the appropriate locations, and then run audiocopy.

This will get you the files you need for the audio (excluding PCM files which need to be merged).  Then, you just need to build the appropriate version of ScummVM with modified changes to play the generated wave files.