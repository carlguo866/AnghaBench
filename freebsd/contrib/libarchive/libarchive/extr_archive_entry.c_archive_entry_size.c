
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aest_size; } ;
struct archive_entry {TYPE_1__ ae_stat; } ;
typedef int la_int64_t ;



la_int64_t
archive_entry_size(struct archive_entry *entry)
{
 return (entry->ae_stat.aest_size);
}
