
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct timeval {int dummy; } ;
struct TYPE_7__ {scalar_t__ high; scalar_t__ low; } ;
struct TYPE_8__ {TYPE_1__ key; } ;
struct cache_entry {int laststamp; int * rname; TYPE_2__ key; } ;
struct TYPE_9__ {scalar_t__ high; scalar_t__ low; } ;
struct TYPE_10__ {TYPE_3__ key; } ;
typedef TYPE_4__ des_block ;
struct TYPE_11__ {int ncachemisses; int ncachehits; int ncachereplays; } ;


 int AUTHDES_CACHESZ ;
 scalar_t__ BEFORE (struct timeval*,int *) ;
 struct cache_entry* authdes_cache ;
 scalar_t__ bcmp (int *,char*,scalar_t__) ;
 short cache_victim () ;
 scalar_t__ strlen (char*) ;
 TYPE_5__ svcauthdes_stats ;

__attribute__((used)) static short
cache_spot(des_block *key, char *name, struct timeval *timestamp)
{
 struct cache_entry *cp;
 int i;
 u_long hi;

 hi = key->key.high;
 for (cp = authdes_cache, i = 0; i < AUTHDES_CACHESZ; i++, cp++) {
  if (cp->key.key.high == hi &&
      cp->key.key.low == key->key.low &&
      cp->rname != ((void*)0) &&
      bcmp(cp->rname, name, strlen(name) + 1) == 0) {
   if (BEFORE(timestamp, &cp->laststamp)) {
    svcauthdes_stats.ncachereplays++;
    return (-1);
   }
   svcauthdes_stats.ncachehits++;
   return (i);
  }
 }
 svcauthdes_stats.ncachemisses++;
 return (cache_victim());
}
