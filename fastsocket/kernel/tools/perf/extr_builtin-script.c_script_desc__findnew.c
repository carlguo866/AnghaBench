
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_desc {int dummy; } ;


 int script_desc__add (struct script_desc*) ;
 int script_desc__delete (struct script_desc*) ;
 struct script_desc* script_desc__find (char const*) ;
 struct script_desc* script_desc__new (char const*) ;

__attribute__((used)) static struct script_desc *script_desc__findnew(const char *name)
{
 struct script_desc *s = script_desc__find(name);

 if (s)
  return s;

 s = script_desc__new(name);
 if (!s)
  goto out_delete_desc;

 script_desc__add(s);

 return s;

out_delete_desc:
 script_desc__delete(s);

 return ((void*)0);
}
