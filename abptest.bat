abcpp %1 %~n1-ps.abc
abcm2ps.exe -X %~n1-ps.abc -O %~n1.xhtml
abcpp -MIDI %1 %~n1-midi.abc
abc2midi.exe %~n1-midi.abc -o %~n1.mid
start %~n1.mid
start %~n1.xhtml

