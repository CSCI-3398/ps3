
directory$ = "/Users/emtucker/Desktop/sounddir"
strings = Create Strings as file list: "list", directory$ + "/*.wav"
numberOfFiles = Get number of strings
for ifile to numberOfFiles
    selectObject: strings
    fileName$ = Get string: ifile
    Read from file: directory$ + "/" + fileName$
    To Pitch: 0, 75, 600
    newFileName$ = "/Users/emtucker/Desktop/sounddir" + fileName$ + ".Pitch"
    Save as short text file: newFileName$
endfor
