
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid_entry {int dummy; } ;
struct cache_set {int dummy; } ;


 struct uuid_entry* uuid_find (struct cache_set*,char const*) ;

__attribute__((used)) static struct uuid_entry *uuid_find_empty(struct cache_set *c)
{
 static const char zero_uuid[16] = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";

 return uuid_find(c, zero_uuid);
}
