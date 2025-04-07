#include <stdio.h>
int est_palindrome(char*mot);
int main(int argc, char *argv[])
{
char *mot="radar";
  // print vrai si la fonction retourne True et faux pour False
  printf("%s\n",est_palindrome(mot)? "vrai":"faux");

}
