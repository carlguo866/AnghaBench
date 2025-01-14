
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int MAX_NAME_SIZE ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int ) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int *) ;
 int pq (int *,char*) ;
 int stderr ;
 int stdin ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int
main(void)
{
 char line[1024], *c, *bra, manuf[8];
 int manufs = 0;
 int mode = 0;
 int lino = 0;
 int manuf_len = 0;
 FILE *devf;

 devf = fopen("devlist.h", "w");
 if (!devf) {
  fprintf(stderr, "Cannot create output file!\n");
  return 1;
 }

 while (fgets(line, sizeof(line)-1, stdin)) {
  lino++;
  if ((c = strchr(line, '\n')))
   *c = 0;
  if (!line[0] || line[0] == '#')
   continue;
  if (line[0] == '\t') {
   switch (mode) {
   case 1:
    if (strlen(line) > 5 && line[5] == ' ') {
     c = line + 5;
     while (*c == ' ')
      *c++ = 0;
     if (manuf_len + strlen(c) + 1 > MAX_NAME_SIZE) {

      bra = strchr(c, '[');
      if (bra && bra > c && bra[-1] == ' ')
       bra[-1] = 0;
      if (manuf_len + strlen(c) + 1 > MAX_NAME_SIZE) {
       fprintf(stderr, "Line %d: Product name too long\n", lino);
       return 1;
      }
     }
     fprintf(devf, "\tPRODUCT(%s,%s,\"", manuf, line+1);
     pq(devf, c);
     fputs("\")\n", devf);
    } else goto err;
    break;
   default:
    goto err;
   }
  } else if (strlen(line) > 4 && line[4] == ' ') {
   c = line + 4;
   while (*c == ' ')
    *c++ = 0;
   if (manufs)
    fputs("ENDMANUF()\n\n", devf);
   manufs++;
   strcpy(manuf, line);
   manuf_len = strlen(c);
   if (manuf_len + 24 > MAX_NAME_SIZE) {
    fprintf(stderr, "Line %d: manufacturer name too long\n", lino);
    return 1;
   }
   fprintf(devf, "MANUF(%s,\"", manuf);
   pq(devf, c);
   fputs("\")\n", devf);
   mode = 1;
  } else {
  err:
   fprintf(stderr, "Line %d: Syntax error in mode %d: %s\n", lino, mode, line);
   return 1;
  }
 }
 fputs("ENDMANUF()\n\n#undef MANUF\n#undef PRODUCT\n#undef ENDMANUF\n", devf);





 fclose(devf);

 return 0;
}
