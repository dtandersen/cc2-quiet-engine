set SOURCE_AUDIO=source\audio
set CONTENT_AUDIO=content\audio

rmdir /s /q content
mkdir content\audio

REM carrier engine rev noise and loud noise on bridge
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle02_rpm_02_loop.wav -filter:a "volume=-12dB" -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle02_rpm_02_loop.ogg
