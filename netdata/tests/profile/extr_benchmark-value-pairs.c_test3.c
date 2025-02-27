
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {char* name; char* value; } ;


 scalar_t__ cache_hash ;
 scalar_t__ dirty_hash ;
 scalar_t__ mapped_file_hash ;
 TYPE_1__* pairs ;
 scalar_t__ pgfault_hash ;
 scalar_t__ pgmajfault_hash ;
 scalar_t__ pgpgin_hash ;
 scalar_t__ pgpgout_hash ;
 scalar_t__ rss_hash ;
 scalar_t__ rss_huge_hash ;
 scalar_t__ simple_hash (char const*) ;
 int strcmp (char const*,char*) ;
 int strtoull (char const*,int *,int) ;
 scalar_t__ swap_hash ;
 scalar_t__ unlikely (int) ;
 int * values3 ;
 scalar_t__ writeback_hash ;

void test3() {
    int i;
    for(i = 0; pairs[i].name ; i++) {
        const char *s = pairs[i].name;
        const char *v = pairs[i].value;

    uint32_t hash = simple_hash(s);

    if(unlikely(hash == cache_hash && !strcmp(s, "cache")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == rss_hash && !strcmp(s, "rss")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == rss_huge_hash && !strcmp(s, "rss_huge")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == mapped_file_hash && !strcmp(s, "mapped_file")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == writeback_hash && !strcmp(s, "writeback")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == dirty_hash && !strcmp(s, "dirty")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == swap_hash && !strcmp(s, "swap")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgpgin_hash && !strcmp(s, "pgpgin")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgpgout_hash && !strcmp(s, "pgpgout")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgfault_hash && !strcmp(s, "pgfault")))
      values3[i] = strtoull(v, ((void*)0), 10);

    else if(unlikely(hash == pgmajfault_hash && !strcmp(s, "pgmajfault")))
      values3[i] = strtoull(v, ((void*)0), 10);
  }
}
