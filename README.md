# Problem Set 3: Extracting Speech Features

### Due Monday, September 21, at 11:59pm Boston time.

For the hackathon in a few weeks, you will have to automate the extraction od speech features from multiple sound files. This means that you will have to actually write using the Praat scripting language and not just paste the history in order to:

* Loop through a directory of sound files and their associated TextGrids.
* Extract speech features from those files (e.g., pitch, duration, shimmer, jitter, htn ratio, formants).
*	Print out those features to a file.

In the `scripts` directory, I've given you a starter script that extracts the mean, max, and min pitch for a  `.wav`. file. I've also include the script from PS2 that loops through all the files in directory, gets the F1 and F2 values for each 'i' segment, and writes this info out to a file. 

In the `data` directory, there are 462 `.wav` files and their associated `TextGrid` files with the identities of the phonemes and their time stamps. I encourage you to listen to these files so you have an idea of their content. They are uncompressed and sampled at 16KHz.

Using the scripts provided, the [Praat scripting tutorial](http://www.fon.hum.uva.nl/praat/manual/Scripting.html), the history paste feature that you used last time, and any [sample](http://phonetics.linguistics.ucla.edu/facilities/acoustic/praat.html) [scripts](http://www.acsu.buffalo.edu/~cdicanio/scripts.html) you find on the web as a guide, carry out the following tasks.

1. Write a script called `get_basics.Praat` that calculates the average duration, and mean, min, and max pitch of each wave file in the data directory. Write out the results to a text file in the following format, with one file per line and one space between each value. 

```
<filename> <duration> <mean-pitch> <max-pitch> <min-pitch>
```  
Add, commit, and push `get_basics.Praat` to your ps3 repository.

2. Write a script called `get_formants.Praat` that calculates the average duration of vowels and consonants in each wave file. Write out the results to a text file in the following format, with one file per line and one space between each value:

```
<filename> <mean-vowel-duration> <mean-consonant-duration>
```

Add, commit, and push `get_formants.Praat` to your ps3 repository.

