
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct tffs_key_name_table {size_t size; TYPE_1__* entries; } ;
struct tffs_entry {int val; } ;
struct TYPE_2__ {scalar_t__ val; int id; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ find_entry (int ,struct tffs_entry*) ;
 int fprintf (int ,char*) ;
 int free (int ) ;
 int print_entry_value (struct tffs_entry*) ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static int show_all_key_value_pairs(struct tffs_key_name_table *key_names)
{
 uint8_t has_value = 0;
 struct tffs_entry tmp;

 for (uint32_t i = 0; i < key_names->size; i++) {
  if (find_entry(key_names->entries[i].id, &tmp)) {
   printf("%s=", (const char *)key_names->entries[i].val);
   print_entry_value(&tmp);
   printf("\n");
   has_value++;
   free(tmp.val);
  }
 }

 if (!has_value) {
  fprintf(stderr, "ERROR: no values found!\n");
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
