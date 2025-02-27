
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAXSYMS ;
 int errx (int,char*) ;
 int findsym (char*) ;
 int* ignore ;
 scalar_t__ nsyms ;
 char* skipsym (char*) ;
 char** symname ;
 int usage () ;
 char** value ;

__attribute__((used)) static void
addsym(bool ignorethis, bool definethis, char *sym)
{
 int symind;
 char *val;

 symind = findsym(sym);
 if (symind < 0) {
  if (nsyms >= MAXSYMS)
   errx(2, "too many symbols");
  symind = nsyms++;
 }
 symname[symind] = sym;
 ignore[symind] = ignorethis;
 val = sym + (skipsym(sym) - sym);
 if (definethis) {
  if (*val == '=') {
   value[symind] = val+1;
   *val = '\0';
  } else if (*val == '\0')
   value[symind] = "";
  else
   usage();
 } else {
  if (*val != '\0')
   usage();
  value[symind] = ((void*)0);
 }
}
