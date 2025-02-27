
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zip_uint16_t ;
typedef int zip_flags_t ;
struct zip_extra_field {int flags; scalar_t__ id; struct zip_extra_field* next; } ;


 int ZIP_EF_BOTH ;
 scalar_t__ ZIP_EXTRA_FIELD_ALL ;
 int _zip_ef_free (struct zip_extra_field*) ;

struct zip_extra_field *
_zip_ef_delete_by_id(struct zip_extra_field *ef, zip_uint16_t id, zip_uint16_t id_idx, zip_flags_t flags)
{
    struct zip_extra_field *head, *prev;
    int i;

    i = 0;
    head = ef;
    prev = ((void*)0);
    for (; ef; ef=(prev ? prev->next : head)) {
 if ((ef->flags & flags & ZIP_EF_BOTH) && ef->id == id) {
     if (id_idx == ZIP_EXTRA_FIELD_ALL || i == id_idx) {
  ef->flags &= ~(flags & ZIP_EF_BOTH);
  if ((ef->flags & ZIP_EF_BOTH) == 0) {
      if (prev)
   prev->next = ef->next;
      else
   head = ef->next;
      ef->next = ((void*)0);
      _zip_ef_free(ef);

      if (id_idx == ZIP_EXTRA_FIELD_ALL)
   continue;
  }
     }

     i++;
     if (i > id_idx)
  break;
 }
 prev = ef;
    }

    return head;
}
