
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {char* name; char* value; int length; } ;


 int GFP_KERNEL ;
 struct property* kzalloc (int,int ) ;
 int memcpy (char*,void const*,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct property *new_property(const char *name, int length,
  const void *value)
{
 struct property *np = kzalloc(sizeof(*np) + strlen(name) + 1 + length,
   GFP_KERNEL);

 if (!np)
  return ((void*)0);
 np->name = (char *)(np + 1);
 np->value = np->name + strlen(name) + 1;
 strcpy(np->name, name);
 memcpy(np->value, value, length);
 np->length = length;
 return np;
}
