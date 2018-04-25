/**
 * Assignment 4 : madlibs
 * by Stanley
 *
 * an assignment for my intro comp science class. using arrays in a poem.
 *
 */
 
 void setup() {
   String lines[] = loadStrings("poems.txt");
   String adjectives[] = loadStrings("adjectives.txt");
   String verbs[] = loadStrings("verbs.txt");
   String nouns[] = loadStrings("nouns.txt");
   int n = int(random(nouns.length-1));
   int v = int(random(verbs.length-1));
   int a = int(random(adjectives.length-1));
   for (int i = 0 ; i< lines.length; i++) {
   lines[i] = lines[i].replaceAll("<noun>", nouns[n]);
   lines[i] = lines[i].replaceAll("<verb>", verbs[v]);
   lines[i] = lines[i].replaceAll("<adjective>", adjectives[a]);
   println(lines[i]);
 }
   

 
 
 
 
 
 }

void draw() {

}
