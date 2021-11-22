#utility function, insert one string into another
function insert(
    s::String,
    pos::Integer,
    sub::String)
    return s[1:pos] * sub * s[pos+1:end]
end
  
#utility thingy, returns name of function is it called from
macro functionName()
    return quote
        st = stacktrace(backtrace())
        myf = ""
        for frm in st
            funcname = frm.func
            if frm.func != :backtrace && frm.func!= Symbol("macro expansion")
                myf = frm.func
                break
            end
        end
        #println("Running function $(myf)")
        String(myf)
    end
end

#Converts ABP file to score and MIDI and displays/plays it
function abptest(fname)
    shortname = splitext(fname)[1]
    run(`abcpp $fname $shortname-ps.abc`)
    run(`abcm2ps.exe -X $shortname-ps.abc -O $shortname.xhtml`)
    rm("$shortname-ps.abc")
    run(`abcpp -MIDI $fname $shortname-midi.abc`)
    run(`abc2midi.exe $shortname-midi.abc -o $shortname.mid`)
    rm("$shortname-midi.abc")
    run(`cmd /C start $shortname.mid`)
    run(`cmd /C start $shortname.xhtml`)
end
