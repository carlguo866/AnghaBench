
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct setup_data {unsigned long len; scalar_t__ next; } ;
struct mem_vector {unsigned long start; unsigned long size; } ;
struct TYPE_3__ {scalar_t__ setup_data; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 int MEM_AVOID_MAX ;
 TYPE_2__* boot_params ;
 struct mem_vector* mem_avoid ;
 scalar_t__ mem_overlaps (struct mem_vector*,struct mem_vector*) ;

__attribute__((used)) static bool mem_avoid_overlap(struct mem_vector *img,
         struct mem_vector *overlap)
{
 int i;
 struct setup_data *ptr;
 unsigned long earliest = img->start + img->size;
 bool is_overlapping = 0;

 for (i = 0; i < MEM_AVOID_MAX; i++) {
  if (mem_overlaps(img, &mem_avoid[i]) &&
      mem_avoid[i].start < earliest) {
   *overlap = mem_avoid[i];
   earliest = overlap->start;
   is_overlapping = 1;
  }
 }


 ptr = (struct setup_data *)(unsigned long)boot_params->hdr.setup_data;
 while (ptr) {
  struct mem_vector avoid;

  avoid.start = (unsigned long)ptr;
  avoid.size = sizeof(*ptr) + ptr->len;

  if (mem_overlaps(img, &avoid) && (avoid.start < earliest)) {
   *overlap = avoid;
   earliest = overlap->start;
   is_overlapping = 1;
  }

  ptr = (struct setup_data *)(unsigned long)ptr->next;
 }

 return is_overlapping;
}
