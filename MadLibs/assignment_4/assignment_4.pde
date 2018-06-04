/**
 * Assignment 4 : madlibs
 * by Stanley
 *
 * an assignment for my intro comp science class. using arrays in a poem.
 *
 */
 
 void setup() {
//loading txt file of the poem
 String lines[] = loadStrings("poems.txt");
//loading txt files containing replacement words
 String adjectives[] = loadStrings("adjectives.txt");
 String verbs[] = loadStrings("verbs.txt");
 String nouns[] = loadStrings("nouns.txt");
//intiger values for replacement words
 int n = int(random(nouns.length-1));
 int v = int(random(verbs.length-1));
 int a = int(random(adjectives.length-1));
//for statement replacing the empty spots with the appropriate words 
  for (int i = 0 ; i< lines.length; i++) {
    lines[i] = lines[i].replaceAll("<noun>", nouns[n]);
    lines[i] = lines[i].replaceAll("<verb>", verbs[v]);
    lines[i] = lines[i].replaceAll("<adjective>", adjectives[a]);
      println(lines[i]);
 }
   

 
 
 
 
 
 }

void draw() {

}
