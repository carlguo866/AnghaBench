
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ indx; int* bits; struct TYPE_16__* next; struct TYPE_16__* prev; } ;
typedef TYPE_2__ bitmap_element ;
typedef TYPE_3__* bitmap ;
struct TYPE_17__ {scalar_t__ indx; TYPE_1__* current; TYPE_2__* first; } ;
struct TYPE_15__ {scalar_t__ indx; } ;
typedef int BITMAP_WORD ;


 unsigned int BITMAP_ELEMENT_WORDS ;
 int bitmap_clear (TYPE_3__*) ;
 int bitmap_copy (TYPE_3__*,TYPE_3__*) ;
 int bitmap_element_free (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* bitmap_elt_insert_after (TYPE_3__*,TYPE_2__*,scalar_t__) ;
 scalar_t__ bitmap_empty_p (TYPE_3__*) ;
 int gcc_assert (int) ;
 int memcpy (int*,int*,int) ;

void
bitmap_compl_and_into (bitmap a, bitmap b)
{
  bitmap_element *a_elt = a->first;
  bitmap_element *b_elt = b->first;
  bitmap_element *a_prev = ((void*)0);
  bitmap_element *next;

  gcc_assert (a != b);

  if (bitmap_empty_p (a))
    {
      bitmap_copy (a, b);
      return;
    }
  if (bitmap_empty_p (b))
    {
      bitmap_clear (a);
      return;
    }

  while (a_elt || b_elt)
    {
      if (!b_elt || (a_elt && a_elt->indx < b_elt->indx))
 {

   next = a_elt->next;
   a_prev = a_elt->prev;
   bitmap_element_free (a, a_elt);
   a_elt = next;
 }
      else if (!a_elt || b_elt->indx < a_elt->indx)
 {

   next = bitmap_elt_insert_after (a, a_prev, b_elt->indx);
   memcpy (next->bits, b_elt->bits, sizeof (next->bits));
   a_prev = next;
   b_elt = b_elt->next;
 }
      else
 {

   unsigned ix;
   BITMAP_WORD ior = 0;

   for (ix = BITMAP_ELEMENT_WORDS; ix--;)
     {
       BITMAP_WORD cleared = a_elt->bits[ix] & b_elt->bits[ix];
       BITMAP_WORD r = b_elt->bits[ix] ^ cleared;

       a_elt->bits[ix] = r;
       ior |= r;
     }
   next = a_elt->next;
   if (!ior)
     bitmap_element_free (a, a_elt);
   else
     a_prev = a_elt;
   a_elt = next;
   b_elt = b_elt->next;
 }
    }
  gcc_assert (!a->current == !a->first);
  gcc_assert (!a->current || a->indx == a->current->indx);
  return;
}
