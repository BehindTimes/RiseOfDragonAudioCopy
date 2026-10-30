import os, sys, re

if not os.path.exists('engines/dgds'):
    print("Error: Run this from the scummvm root directory.")
    sys.exit(1)

def apply_regex(filepath, patterns):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    original = content
    for search, replace in patterns:
        content, count = re.subn(search, replace, content, count=0, flags=re.MULTILINE)
        if count == 0:
            print(f"[ERROR] Could not find pattern in {filepath}:\n  {search[:60]}...")

    if content != original:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"[SUCCESS] Patched {filepath}")
    else:
        print(f"[SKIP] No changes applied to {filepath}")

# 1. sound.h
apply_regex('engines/dgds/sound.h', [
    (r"(\tbool\s+playPCM\(const\s+byte\s*\*data,\s*uint32\s+size\);)",
     r"\1\n\tbool isPlayingVoice();\n\tvoid playVoice(const Common::String &filename, int num);")
])

# 2. sound.cpp
apply_regex('engines/dgds/sound.cpp', [
    (r"(#include\s+\"audio/decoders/raw\.h\")",
     r'\1\n#include "audio/decoders/wave.h"'),
    (r"(bool\s+Sound::playPCM\(const\s+byte\s*\*data,\s*uint32\s+size\)\s*\{)",
     r'bool Sound::isPlayingVoice() {\n\tChannel *ch = &_channels[0];\n\tif (_mixer->isSoundHandleActive(ch->handle)) {\n\t\treturn true;\n\t}\n\treturn false;\n}\n\nvoid Sound::playVoice(const Common::String &dlgFile, int num) {\n\tCommon::String filename = Common::String::format("aud%s%d.wav", dlgFile.c_str(), num);\n\tCommon::SeekableReadStream *stream = SearchMan.createReadStreamForMember(filename.c_str());\n\n\tif (!stream) return;\n\n\t_mixer->stopAll();\n\tAudio::AudioStream *input = Audio::makeWAVStream(stream, DisposeAfterUse::YES);\n\tChannel *ch = &_channels[0];\n\t_mixer->playStream(Audio::Mixer::kSpeechSoundType, &ch->handle, input, -1, 127, 0, DisposeAfterUse::YES);\n}\n\n\1')
])

# 3. dialog.h
apply_regex('engines/dgds/dialog.h', [
    (r"(Common::String\s+_str;)",
     r"\1\n\tCommon::String _filename;")
])

# 4. dgds.cpp
apply_regex('engines/dgds/dgds.cpp', [
    (r"(SearchMan\.addSubDirectoryMatching\(gameDataDir,\s*\"patches\"\);)",
     r'\1\n\tSearchMan.addSubDirectoryMatching(gameDataDir, "audio");')
])

# 5. scene.h
apply_regex('engines/dgds/scene.h', [
    (r"(bool\s+readDialogList\(Common::SeekableReadStream\s*\*s,\s*Common::List<Dialog>\s*&list,\s*)(int16\s*filenum\s*=\s*0\)\s*const;)",
     r"\1const Common::String &filename, \2"),
    (r"(virtual\s+bool\s+parse\(Common::SeekableReadStream\s*\*s)(\)\s*=\s*0;)",
     r"\1, const Common::String &filename\2"),
    (r"(bool\s+parse\(Common::SeekableReadStream\s*\*s)(\)\s*override;)",
     r"\1, const Common::String &filename\2")
])

# 6. scene.cpp
apply_regex('engines/dgds/scene.cpp', [
    (r"(#include\s+\"dgds/game_palettes\.h\")",
     r'\1\n#include "dgds/sound.h"'),
    (r"(bool\s+Scene::readDialogList\(Common::SeekableReadStream\s*\*s,\s*Common::List<Dialog>\s*&list,\s*)(int16\s*filenum\s*/\*\s*=\s*0\s*\*/\)\s*const\s*\{)",
     r"\1const Common::String &filename, \2"),
    (r"(Dialog\s+dst;)\s*(dst\._num\s*=\s*s->readUint16LE\(\);)",
     r"\1\n\t\tdst._filename = filename;\n\t\t\2"),
    (r"(chunk\.isSection\(ID_SDS\)\)\s*\{[\s\n\t]*result\s*=\s*parse\(stream)(\);)",
     r"\1, filename\2"),
    (r"(bool\s+SDSScene::parse\(Common::SeekableReadStream\s*\*stream)(\)\s*\{)",
     r"\1, const Common::String &filename\2"),
    (r"(readDialogList\(stream,\s*_dialogs)(\);)",
     r"\1, filename\2"),
    (r"(result\s*=\s*readDialogList\(stream,\s*_dialogs,)(\s*fileNum\);)",
     r"\1 filename,\2"),
    (r"(Dialog\s+dlg;)\s*(dlg\._num\s*=\s*TIRED_DLG_ID;)",
     r'\1\n\t\tdlg._filename = Common::String("S61.SDS");\n\t\t\2'),
    (r"(if\s*\(\s*clearDlgFlag\s*\|\|\s*\(dlg\._state->_hideTime\s*&&\s*timeNow\s*>=\s*dlg\._state->_hideTime)(\)\s*\)\s*\{)",
     r"\1 && !DgdsEngine::getInstance()->_soundPlayer->isPlayingVoice()\2"),
    (r"(if\s*\(\s*dlg\.hasFlag\(kDlgFlagHi20\)\s*\)\s*\{[\s\n\t]*//\s*Reset the dialog time and selected action)",
     r"\1\n\t\t\t\tDgdsEngine::getInstance()->_soundPlayer->playVoice(dlg._filename, dlg._num);"),
    (r"(bool\s+GDSScene::parse\(Common::SeekableReadStream\s*\*stream)(\)\s*\{)",
     r"\1, const Common::String &filename\2")
])
