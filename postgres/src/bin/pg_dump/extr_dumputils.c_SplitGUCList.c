
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int memmove (char*,char*,int) ;
 scalar_t__ pg_malloc (int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

bool
SplitGUCList(char *rawstring, char separator,
    char ***namelist)
{
 char *nextp = rawstring;
 bool done = 0;
 char **nextptr;






 *namelist = nextptr = (char **)
  pg_malloc((strlen(rawstring) / 2 + 2) * sizeof(char *));
 *nextptr = ((void*)0);

 while (isspace((unsigned char) *nextp))
  nextp++;

 if (*nextp == '\0')
  return 1;


 do
 {
  char *curname;
  char *endp;

  if (*nextp == '"')
  {

   curname = nextp + 1;
   for (;;)
   {
    endp = strchr(nextp + 1, '"');
    if (endp == ((void*)0))
     return 0;
    if (endp[1] != '"')
     break;

    memmove(endp, endp + 1, strlen(endp));
    nextp = endp;
   }

   nextp = endp + 1;
  }
  else
  {

   curname = nextp;
   while (*nextp && *nextp != separator &&
       !isspace((unsigned char) *nextp))
    nextp++;
   endp = nextp;
   if (curname == nextp)
    return 0;
  }

  while (isspace((unsigned char) *nextp))
   nextp++;

  if (*nextp == separator)
  {
   nextp++;
   while (isspace((unsigned char) *nextp))
    nextp++;

  }
  else if (*nextp == '\0')
   done = 1;
  else
   return 0;


  *endp = '\0';




  *nextptr++ = curname;


 } while (!done);

 *nextptr = ((void*)0);
 return 1;
}
