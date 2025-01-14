
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_file ;
typedef int path ;
typedef int buff ;
typedef int FILE ;


 scalar_t__ check_defines (void*,int,char*) ;
 int do_counters (char*) ;
 int fclose (int *) ;
 int feof (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ isspace (char) ;
 int my_fputs (char*,int *) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,...) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int main(int argc, char *argv[])
{
 char path[256], path_file[256];
 char buff[1024];
 FILE *fi, *fo;
 int skip_mode = 0, ifdef_level = 0, skip_level = 0, line = 0;
 char *p;

 if (argc < 3)
 {
  printf("usage:\n%s <file_in> <file_out> [defines...]\n", argv[0]);
  return 1;
 }

 fi = fopen(argv[1], "r");
 if (fi == ((void*)0))
 {
  printf("failed to open: %s\n", argv[1]);
  return 2;
 }

 fo = fopen(argv[2], "wb");
 if (fo == ((void*)0))
 {
  printf("failed to open: %s\n", argv[2]);
  return 3;
 }

 snprintf(path, sizeof(path), "%s", argv[1]);
 for (p = path + strlen(path) - 1; p > path; p--) {
  if (*p == '/' || *p == '\\') {
   p[1] = 0;
   break;
  }
 }

 for (++line; !feof(fi); line++)
 {
  char *fgs;

  fgs = fgets(buff, sizeof(buff), fi);
  if (fgs == ((void*)0)) break;

  if (buff[0] == '#')
  {

   if (strncmp(buff, "#ifdef ", 7) == 0)
   {
    ifdef_level++;
    if (!skip_mode && !check_defines((void *) &argv[3], argc-3, buff + 7))
     skip_mode = 1, skip_level = ifdef_level;
   }
   else if (strncmp(buff, "#ifndef ", 8) == 0)
   {
    ifdef_level++;
    if (!skip_mode && check_defines((void *) &argv[3], argc-3, buff + 8))
     skip_mode = 1, skip_level = ifdef_level;
   }
   else if (strncmp(buff, "#else", 5) == 0)
   {
    if (!skip_mode || skip_level == ifdef_level)
     skip_mode ^= 1, skip_level = ifdef_level;
   }
   else if (strncmp(buff, "#endif", 6) == 0)
   {
    if (skip_level == ifdef_level)
     skip_mode = 0;
    ifdef_level--;
    if (ifdef_level == 0) skip_mode = 0;
    if (ifdef_level < 0)
    {
     printf("%i: warning: #endif without #ifdef, ignoring\n", line);
     ifdef_level = 0;
    }
   }
   else if (strncmp(buff, "#include ", 9) == 0)
   {
    char *pe, *p = buff + 9;
    FILE *ftmp;
    if (skip_mode)
     continue;
    while (*p && (*p == ' ' || *p == '\"'))
     p++;
    for (pe = p + strlen(p) - 1; pe > p; pe--) {
     if (isspace(*pe) || *pe == '\"') *pe = 0;
     else break;
    }
    snprintf(path_file, sizeof(path_file), "%s%s", path, p);
    ftmp = fopen(path_file, "r");
    if (ftmp == ((void*)0)) {
     printf("%i: error: failed to include \"%s\"\n", line, p);
     return 1;
    }
    while (!feof(ftmp))
    {
     fgs = fgets(buff, sizeof(buff), ftmp);
     if (fgs == ((void*)0))
      break;
     my_fputs(buff, fo);
    }
    fclose(ftmp);
    continue;
   }


   continue;
  }
  if (!skip_mode)
  {
   do_counters(buff);
   my_fputs(buff, fo);
  }
 }

 fclose(fi);
 fclose(fo);

 return 0;
}
