
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lemon_strcpy (char*,char const*) ;

__attribute__((used)) static void lemon_strcat(char *dest, const char *src){
  while( *dest ) dest++;
  lemon_strcpy(dest, src);
}
