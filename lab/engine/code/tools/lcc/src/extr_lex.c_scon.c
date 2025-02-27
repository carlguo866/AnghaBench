
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Aflag ;
 int BUFSIZE ;
 int MAXTOKEN ;
 int NEWLINE ;
 int backslash (int) ;
 int* cp ;
 int error (char*,...) ;
 int fillbuf () ;
 char getchr () ;
 int* limit ;
 int* map ;
 int nextline () ;
 int warning (char*,...) ;

__attribute__((used)) static void *scon(int q, void *put(int c, void *cl), void *cl) {
 int n = 0, nbad = 0;

 do {
  cp++;
  while (*cp != q) {
   int c;
   if (map[*cp]&NEWLINE) {
    if (cp < limit)
     break;
    cp++;
    nextline();
    if (cp == limit)
     break;
    continue;
   }
   c = *cp++;
   if (c == '\\') {
    if (map[*cp]&NEWLINE) {
     if (cp < limit)
      break;
     cp++;
     nextline();
    }
    if (limit - cp < MAXTOKEN)
     fillbuf();
    c = backslash(q);
   } else if (c < 0 || c > 255 || map[c] == 0)
    nbad++;
   if (n++ < BUFSIZE)
    cl = put(c, cl);
  }
  if (*cp == q)
   cp++;
  else
   error("missing %c\n", q);
 } while (q == '"' && getchr() == '"');
 cl = put(0, cl);
 if (n >= BUFSIZE)
  error("%s literal too long\n", q == '"' ? "string" : "character");
 if (Aflag >= 2 && q == '"' && n > 509)
  warning("more than 509 characters in a string literal\n");
 if (Aflag >= 2 && nbad > 0)
  warning("%s literal contains non-portable characters\n",
   q == '"' ? "string" : "character");
 return cl;
}
