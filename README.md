# Processing Assignment 4: Mad Libs

In this assignment you will create a mad lib. Mad libs are short stories that have blanks called placeholders to be filled in. In the non-computerized version of this
game, one person asks a second person to fill in each of the placeholders without the second person knowing the overall story. Once all placeholders are filled in, the second person is shown the resulting story, often with humorous results. See https://en.wikipedia.org/wiki/Mad_Libs for more info. Note: many song lyrics are not appropriate for this asignment due to their repetitive nature. If you want to use a song lyric make sure you ask Dr. P. first.

In this assignment you will create a computerized version of mad libs where your program will read in a text file where the placeholders are indicated using tags. The program then replaced the placeholders with random words from pre-defined lists.

## Instructions
Find a poem of your choice that has at least ten lines and save it as a plain text file in the ```MadLibs/data``` directory. Name the file ```poem.txt```. You can use any poem you want to but if you cannot think of any you can start here  http://hellopoetry.com/shel-silverstein/poems/title/ for some poems by Shel Silverstein or http://100.best-poems.net/ for a mix of well known poems.

Open ```poem.txt``` in a text editor and replace nouns with the tag ```<noun>```, verbs with ```<verb>``` and adjectives with ```<adjective>```. You do not have to replace all the nouns, verbs and adjectives with tags. It is up to you to decide with ones to replace to get a "good" mad lib. Avoid using the same tag more than once per row (try to figure out why a tag appearing more than once in a row would be a problem). Do try to use several different tags in at least some of the lines.

For example the following poem by Shel Silverstein
```
There's a Polar Bear
In our Frigidaire--
He likes it 'cause it's cold in there.
With his seat in the meat
And his face in the fish
And his big hairy paws
In the buttery dish,
He's nibbling the noodles,
And munching the rice,
He's slurping the soda,
He's licking the ice.
And he lets out a roar
If you open the door.
And it gives me a scare
To know he's in there--
That Polary Bear
In our Fridgitydaire.
```
could end up looking like this
```
There's a <noun>
In our <noun>--
He likes it 'cause it's <adjective> in there.
With his seat in the <noun>
And his face in the <noun>
And his <adjective> hairy <noun>
In the buttery <noun>,
He's <verb> the <noun>,
He's <verb> the <noun>,
He's <verb> the <noun>,
He's <verb> the <noun>.
And he lets out a <noun>
If you open the <noun>.
And it gives me a scare
To know he's in there--
That <noun>
In our <noun>.
```
Keep in mind that:
* 60% - your poem needs to be at least 10 lines in length using proper coding conventions
* 70% - you need to use all three tags (```noun```, ```verb```, ```adjective```) - but not repeate the same tag in a given line
* 80% - mad lib has to have multiple instances of all three tags being used in a single line
* 90% - program has to work perfectly + the mad lib needs to make sense syntactically (albeit it might be nonsensical), i.e. plural vs. singular, tense (past vs. present), etc.

The ```MadLibs/data``` already contains dictionaries of nouns, verbs and adjectives. Using these is optional and you are allowed to use other dictionaries if you want to (they would have to be added to the repository). Each dictionary has to have at least 100 words in it. Feel free to create and use other types of dictionaries, e.g. exclamations, adverbs, names, animals, etc.

Your program will need to load each dictionary separatelly as well as the poem file (see assignment 4 for how to work with text files).

Once the poem has been loaded you need to loop across each array entry (representing each line in the poem) and replace every occurence of the placeholders ```<noun>```, ```<verb>``` and ```<adjective>``` with a random word from the corresponding dictionary.

The only console output the program will produce is the generated mad lib.

## Programing tips
* Review arrays (https://processing.org/tutorials/arrays/), strings (https://processing.org/reference/String.html)
* To find out the length of an array: ```nameOfArray.length```
* To loop across an array:
```
for (int i = 0 ; i < nameOfArray.length; i++) {
  // Do something with entry i...
}
```
* To replace a word in a string:
```
lines[i] = lines[i].replaceAll("<noun>", nouns[index]);
```
* To generate a random integer between 0 and n: ```int i = int(random(n-1));``` (https://processing.org/reference/random_.html)
