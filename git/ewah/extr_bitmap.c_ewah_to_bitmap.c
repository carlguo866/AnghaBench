
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_iterator {int dummy; } ;
struct ewah_bitmap {int dummy; } ;
struct bitmap {size_t word_alloc; int * words; } ;
typedef int eword_t ;


 int ALLOC_GROW (int *,size_t,size_t) ;
 struct bitmap* bitmap_new () ;
 int ewah_iterator_init (struct ewah_iterator*,struct ewah_bitmap*) ;
 scalar_t__ ewah_iterator_next (int *,struct ewah_iterator*) ;

struct bitmap *ewah_to_bitmap(struct ewah_bitmap *ewah)
{
 struct bitmap *bitmap = bitmap_new();
 struct ewah_iterator it;
 eword_t blowup;
 size_t i = 0;

 ewah_iterator_init(&it, ewah);

 while (ewah_iterator_next(&blowup, &it)) {
  ALLOC_GROW(bitmap->words, i + 1, bitmap->word_alloc);
  bitmap->words[i++] = blowup;
 }

 bitmap->word_alloc = i;
 return bitmap;
}
