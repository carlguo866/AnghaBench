
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct special_entry {int size; short feature; scalar_t__ new; scalar_t__ group; scalar_t__ orig; scalar_t__ new_len; scalar_t__ orig_len; int jump_or_nop; } ;
struct special_alt {unsigned char orig_len; unsigned char new_len; int skip_orig; int skip_alt; unsigned int new_off; int new_sec; scalar_t__ orig_off; int orig_sec; scalar_t__ group; int jump_or_nop; } ;
struct section {TYPE_1__* data; } ;
struct rela {scalar_t__ addend; TYPE_2__* sym; } ;
struct elf {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; int sec; int name; } ;
struct TYPE_3__ {scalar_t__ d_buf; } ;


 scalar_t__ STT_SECTION ;
 int WARN_FUNC (char*,struct section*,scalar_t__,...) ;
 unsigned short X86_FEATURE_POPCNT ;
 unsigned short X86_FEATURE_SMAP ;
 struct rela* find_rela_by_dest (struct section*,scalar_t__) ;
 scalar_t__ uaccess ;

__attribute__((used)) static int get_alt_entry(struct elf *elf, struct special_entry *entry,
    struct section *sec, int idx,
    struct special_alt *alt)
{
 struct rela *orig_rela, *new_rela;
 unsigned long offset;

 offset = idx * entry->size;

 alt->group = entry->group;
 alt->jump_or_nop = entry->jump_or_nop;

 if (alt->group) {
  alt->orig_len = *(unsigned char *)(sec->data->d_buf + offset +
         entry->orig_len);
  alt->new_len = *(unsigned char *)(sec->data->d_buf + offset +
        entry->new_len);
 }

 if (entry->feature) {
  unsigned short feature;

  feature = *(unsigned short *)(sec->data->d_buf + offset +
           entry->feature);






  if (feature == X86_FEATURE_POPCNT)
   alt->skip_orig = 1;
  if (feature == X86_FEATURE_SMAP) {
   if (uaccess)
    alt->skip_orig = 1;
   else
    alt->skip_alt = 1;
  }
 }

 orig_rela = find_rela_by_dest(sec, offset + entry->orig);
 if (!orig_rela) {
  WARN_FUNC("can't find orig rela", sec, offset + entry->orig);
  return -1;
 }
 if (orig_rela->sym->type != STT_SECTION) {
  WARN_FUNC("don't know how to handle non-section rela symbol %s",
      sec, offset + entry->orig, orig_rela->sym->name);
  return -1;
 }

 alt->orig_sec = orig_rela->sym->sec;
 alt->orig_off = orig_rela->addend;

 if (!entry->group || alt->new_len) {
  new_rela = find_rela_by_dest(sec, offset + entry->new);
  if (!new_rela) {
   WARN_FUNC("can't find new rela",
      sec, offset + entry->new);
   return -1;
  }

  alt->new_sec = new_rela->sym->sec;
  alt->new_off = (unsigned int)new_rela->addend;


  if (alt->new_off >= 0x7ffffff0)
   alt->new_off -= 0x7ffffff0;
 }

 return 0;
}
