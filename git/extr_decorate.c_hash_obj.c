
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;


 unsigned int oidhash (int *) ;

__attribute__((used)) static unsigned int hash_obj(const struct object *obj, unsigned int n)
{
 return oidhash(&obj->oid) % n;
}
