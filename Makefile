default_target: DecodeVideo

Hello:
	clang  c/ff_base/base.c c/hello.c  -lavutil  -lavformat -lavcodec  -lswscale -liconv -lz  -Llibs-c/lib -Ilibs-c/include -I/Users/meng.wm/Documents/SDK/emsdk⁩/upstream⁩/emscripten⁩/system⁩/include⁩ -Ic/ff_base -v -g -o clib

DecodeVideo:
	clang  c/ff_base/base.c c/ff_decode_video/decode_video.c  -lavutil  -lavformat -lavcodec  -lswscale -liconv -lz  -Llibs-c/lib -Ilibs-c/include -Ic/ff_base -v -g -o clib

DecodeAudio:
	clang  c/ff_base/base.c c/ff_decode_audio/decode_audio.c  -lavutil  -lavformat -lavcodec  -lswscale -liconv -lz  -Llibs-c/lib -Ilibs-c/include -Ic/ff_base -v -g -o clib

AudioSonic:
	clang  c/ff_base/base.c c/ff_base/sonic.c ff_playbackrate/decode_audio.c  -lavutil  -lavformat -lavcodec  -lswscale -liconv -lz  -Llibs-c/lib -Ilibs/include -Ic/ff_base -v -g -o clib

CustomIo:
	clang  c/ff_base/base.c c/ff_custom_io/custom_io.c  -lavutil  -lavformat -lavcodec  -lswscale -liconv -lz  -Llibs-c/lib -Ilibs-c/include -Ic/ff_base -v -g -o clib

Seek:
	clang  c/ff_base/base.c c/ff_seek/seek.c  -lavutil  -lavformat -lavcodec  -lswscale -liconv -lz  -Llibs-c/lib -Ilibs/include -Ic/ff_base -v -g -o clib

Wasm:
	clang  c/ff_base/base.c c/ff_wasm/decode.c  -lavutil  -lavformat -lavcodec  -lswscale -liconv -lz  -Llibs-c/lib -Ilibs/include -Ic/ff_base  -v -g -o clib

Remux:
	clang  c/ff_remux/remux.c  -lavutil  -lavformat -lavcodec -liconv -lz  -Llibs-c/lib -Ilibs/include -v -g -o clib


# -framework VideoToolbox -framework CoreVideo