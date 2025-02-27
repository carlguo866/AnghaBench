
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; struct property* value; struct property* name; struct property* next; } ;


 int GFP_KERNEL ;
 int kfree (struct property*) ;
 void* kmalloc (int const,int ) ;
 struct property* kzalloc (int,int ) ;
 int memcpy (struct property*,unsigned char const*,int const) ;
 int strcpy (struct property*,char const*) ;
 int const strlen (char const*) ;

__attribute__((used)) static struct property *new_property(const char *name, const int length,
         const unsigned char *value, struct property *last)
{
 struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);

 if (!new)
  return ((void*)0);

 if (!(new->name = kmalloc(strlen(name) + 1, GFP_KERNEL)))
  goto cleanup;
 if (!(new->value = kmalloc(length + 1, GFP_KERNEL)))
  goto cleanup;

 strcpy(new->name, name);
 memcpy(new->value, value, length);
 *(((char *)new->value) + length) = 0;
 new->length = length;
 new->next = last;
 return new;

cleanup:
 kfree(new->name);
 kfree(new->value);
 kfree(new);
 return ((void*)0);
}
