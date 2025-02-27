
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Aflag ;
 int MAXLINE ;
 char* cp ;
 char* file ;
 int fillbuf () ;
 char* firstfile ;
 char* limit ;
 int lineno ;
 int nextline () ;
 int pragma () ;
 char* stringn (char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int warning (char*) ;

__attribute__((used)) static void resynch(void) {
 for (cp++; *cp == ' ' || *cp == '\t'; )
  cp++;
 if (limit - cp < MAXLINE)
  fillbuf();
 if (strncmp((char *)cp, "pragma", 6) == 0) {
  cp += 6;
  pragma();
 } else if (*cp >= '0' && *cp <= '9') {
 line: for (lineno = 0; *cp >= '0' && *cp <= '9'; )
   lineno = 10*lineno + *cp++ - '0';
  lineno--;
  while (*cp == ' ' || *cp == '\t')
   cp++;
  if (*cp == '"') {
   file = (char *)++cp;
   while (*cp && *cp != '"' && *cp != '\n')
    cp++;
   file = stringn(file, (char *)cp - file);
   if (*cp == '\n')
    warning("missing \" in preprocessor line\n");
   if (firstfile == 0)
    firstfile = file;
  }
 } else if (strncmp((char *)cp, "line", 4) == 0) {
  for (cp += 4; *cp == ' ' || *cp == '\t'; )
   cp++;
  if (*cp >= '0' && *cp <= '9')
   goto line;
  if (Aflag >= 2)
   warning("unrecognized control line\n");
 } else if (Aflag >= 2 && *cp != '\n')
  warning("unrecognized control line\n");
 while (*cp)
  if (*cp++ == '\n') {
   if (cp == limit + 1)
    nextline();
   else
    break;
  }
}
