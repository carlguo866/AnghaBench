
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* alloca (int) ;
 int memcpy (char*,char*,int) ;
 int putenv (char*) ;
 int strlen (char*) ;

int setenv(char *name, char *value, int overwrite)
{
 int name_len = strlen(name);
 int value_len = strlen(value);
 char *var = alloca(name_len + 1 + value_len + 1);

 memcpy(var, name, name_len);

 var[name_len] = '=';

 memcpy(var + name_len + 1, value, value_len);

 var[name_len + 1 + value_len] = '\0';

 return putenv(var);
}
