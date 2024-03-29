# Problem Set 3: Extracting Speech Features

### Due Monday, September 21, at 11:59pm Boston time.

For the hackathon in a few weeks, you will have to automate the extraction of speech features from multiple sound files using the information contained in `TextGrid` files. For this problem set you will practice writing these scripts so that you are comfortable doing the following:

* Loop through a directory of `.wav` files and their associated `.TextGrid` files.
* Extract speech features from those files.
*	Print out those features to a file.

In the `scripts` directory, I've given you a starter script that extracts the mean pitch for a directory full of `.wav` files. I've also include the script from PS2 that gets the F1 and F2 values for each 'i' segment in a file, and writes this info out to the console. 

In the `data` directory, there are 462 `.wav` files and their associated `.TextGrid` files that contain the identities of the phonemes and their time stamps. I encourage you to listen to these files so you have an idea of their content. They are uncompressed and sampled at 16KHz.

Using the scripts provided, the [Praat scripting tutorial](http://www.fon.hum.uva.nl/praat/manual/Scripting.html), the history paste feature that you used last time, and [any](https://eleanorchodroff.com/tutorial/PraatScripting.pdf) [sample](http://phonetics.linguistics.ucla.edu/facilities/acoustic/praat.html) [scripts](http://www.acsu.buffalo.edu/~cdicanio/scripts.html) you find on the web as a guide, carry out the following tasks.

1. Write a script called `get_basics.Praat` that calculates the duration, and the mean, min, and max pitch of each wave file in the data directory. Write out the results to a text file in the following format, with one file per line and one space between each value. 

```
<filename> <duration> <mean-pitch> <max-pitch> <min-pitch>
```  
Add, commit, and push `get_basics.Praat` to your ps3 repository.

2. Write a script called `get_durations.Praat` that calculates the average duration of vowels and consonants in each wave file. (Hint: this will require also looking at the `TextGrid` files, of course.) Write out the results to a text file in the following format, with one file per line and one space between each value:

```
<filename> <mean-vowel-duration> <mean-consonant-duration>
```

Add, commit, and push `get_durations.Praat` to your ps3 repository.

3. Try out the Python library [parselmouth](https://parselmouth.readthedocs.io/en/stable/), which is more or less a Python wrapper for Praat. I've provided a Jupyter notebooks demonstrating a bit of its functionality. You might find this useful for the hackathon!

---

### Deliverables due Monday, September 21, at 11:59pm Boston time:

* `get_basics.Praat` 
* `get_durations.Praat`

