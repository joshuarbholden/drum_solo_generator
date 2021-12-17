abcm2ps.exe -X %1 -O %~n1.xhtml
abc2midi.exe %1 -o %~n1.mid
start %~n1.mid
start %~n1.xhtml

