# This script calculates the mean pitch for each wav file and 
# then prints out the wav file name and mean pitch to a file.

# NOTE: You'll have to change these paths below to match your paths:
directory$ = "/Users/emilypx/Desktop/ps3/data"
outFile$ = "/Users/emilypx/Desktop/ps3/meanpitch.txt"

# This writes out field name headers to the output file.
writeFileLine: outFile$, "filename mean-pitch"

# Read in the names of all the wav files in the directory.
strings = Create Strings as file list: "list", directory$ + "/*.wav"
numberOfFiles = Get number of strings

# For each file in the list of files...
for ifile to numberOfFiles
    selectObject: strings
    fileName$ = Get string: ifile

	# This just writes out the file name to the log window.
	# You can comment this out.
	appendInfoLine: directory$ + "/" + fileName$

	# Read in the file, extract its pitch and get the mean.
	# Hint: to get min and max, experiment with the Praat
	# interface and then paste the command history!
    Read from file: directory$ + "/" + fileName$
    To Pitch: 0, 75, 600
	meanpitch = Get mean: 0, 0, "Hertz"

	# Write it out to the output file.
	appendFileLine: outFile$, fileName$, " ", meanpitch

endfor
