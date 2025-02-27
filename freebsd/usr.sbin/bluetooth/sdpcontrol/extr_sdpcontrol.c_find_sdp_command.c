
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_command {char* command; } ;


 scalar_t__ strcasecmp (char const*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static struct sdp_command *
find_sdp_command(char const *command, struct sdp_command *category)
{
 struct sdp_command *c = ((void*)0);

 for (c = category; c->command != ((void*)0); c++) {
  char *c_end = strchr(c->command, ' ');

  if (c_end != ((void*)0)) {
   int len = c_end - c->command;

   if (strncasecmp(command, c->command, len) == 0)
    return (c);
  } else if (strcasecmp(command, c->command) == 0)
    return (c);
 }

 return (((void*)0));
}
