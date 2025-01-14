
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sum ;
typedef scalar_t__ off_t ;
typedef int id ;
struct TYPE_3__ {scalar_t__ attr; int lcase; int* name; } ;
typedef TYPE_1__ DIR_ENT ;


 int CHARS_PER_LFN ;
 char* CNV_PARTS_SO_FAR () ;
 int LFN_ENT ;
 int LFN_ID_START ;
 int MSDOS_NAME ;
 int UNTIL_0 ;
 scalar_t__ VFAT_LN_ATTR ;
 int alias_checksum ;
 int clear_lfn_slots (int ,int ) ;
 char* cnv_unicode (int ,int ,int) ;
 int die (char*) ;
 char* file_name (int*) ;
 int free (char*) ;
 int fs_write (scalar_t__,int,int*) ;
 int get_key (char*,char*) ;
 scalar_t__ interactive ;
 int lfn_checksum ;
 scalar_t__* lfn_offsets ;
 int lfn_parts ;
 int lfn_reset () ;
 int lfn_slot ;
 int lfn_unicode ;
 int memmove (int ,int ,int) ;
 scalar_t__ offsetof (int ,int) ;
 int printf (char*,...) ;

char *lfn_get(DIR_ENT * de, off_t * lfn_offset)
{
    char *lfn;
    uint8_t sum;
    int i;

    *lfn_offset = 0;
    if (de->attr == VFAT_LN_ATTR)
 die("lfn_get called with LFN directory entry");






    if (lfn_slot == -1)

 return ((void*)0);

    if (lfn_slot != 0) {





 char *long_name = CNV_PARTS_SO_FAR();
 char *short_name = file_name(de->name);
 printf("Unfinished long file name \"%s\".\n"
        "  (Start may have been overwritten by %s)\n",
        long_name, short_name);
 free(long_name);
 if (interactive) {
     printf("1: Delete LFN\n2: Leave it as it is.\n"
     "3: Fix numbering (truncates long name and attaches "
     "it to short name %s)\n", short_name);
 } else
     printf("  Not auto-correcting this.\n");
 switch (interactive ? get_key("123", "?") : '2') {
 case '1':
     clear_lfn_slots(0, lfn_parts - 1);
     lfn_reset();
     return ((void*)0);
 case '2':
     lfn_reset();
     return ((void*)0);
 case '3':
     for (i = 0; i < lfn_parts; ++i) {
  uint8_t id = (lfn_parts - i) | (i == 0 ? LFN_ID_START : 0);
  fs_write(lfn_offsets[i] + offsetof(LFN_ENT, id),
    sizeof(id), &id);
     }
     memmove(lfn_unicode, lfn_unicode + lfn_slot * CHARS_PER_LFN * 2,
      lfn_parts * CHARS_PER_LFN * 2);
     break;
 }
    }

    for (sum = 0, i = 0; i < MSDOS_NAME; i++)
 sum = (((sum & 1) << 7) | ((sum & 0xfe) >> 1)) + de->name[i];
    if (sum != lfn_checksum) {



 char *long_name = CNV_PARTS_SO_FAR();
 char *short_name = file_name(de->name);
 printf("Wrong checksum for long file name \"%s\".\n"
        "  (Short name %s may have changed without updating the long name)\n",
        long_name, short_name);
 free(long_name);
 if (interactive) {
     printf("1: Delete LFN\n2: Leave it as it is.\n"
     "3: Fix checksum (attaches to short name %s)\n", short_name);
 } else
     printf("  Not auto-correcting this.\n");
 if (interactive) {
     switch (get_key("123", "?")) {
     case '1':
  clear_lfn_slots(0, lfn_parts - 1);
  lfn_reset();
  return ((void*)0);
     case '2':
  lfn_reset();
  return ((void*)0);
     case '3':
  for (i = 0; i < lfn_parts; ++i) {
      fs_write(lfn_offsets[i] + offsetof(LFN_ENT, alias_checksum),
        sizeof(sum), &sum);
  }
  break;
     }
 }
    }

    *lfn_offset = lfn_offsets[0];
    lfn = cnv_unicode(lfn_unicode, UNTIL_0, 1);
    lfn_reset();
    return (lfn);
}
