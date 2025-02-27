
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int encoding; scalar_t__ mixed_encoding; } ;
struct TYPE_11__ {TYPE_1__ b; } ;
struct object {TYPE_2__ s; } ;
struct fde_accumulator {int dummy; } ;
struct dwarf_cie {int dummy; } ;
struct TYPE_12__ {scalar_t__ CIE_delta; scalar_t__ pc_begin; } ;
typedef TYPE_3__ fde ;
typedef scalar_t__ _Unwind_Ptr ;


 int DW_EH_PE_absptr ;
 scalar_t__ base_from_object (int,struct object*) ;
 int fde_insert (struct fde_accumulator*,TYPE_3__ const*) ;
 struct dwarf_cie* get_cie (TYPE_3__ const*) ;
 int get_cie_encoding (struct dwarf_cie const*) ;
 int last_fde (struct object*,TYPE_3__ const*) ;
 TYPE_3__* next_fde (TYPE_3__ const*) ;
 int read_encoded_value_with_base (int,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ size_of_encoded_value (int) ;

__attribute__((used)) static void
add_fdes (struct object *ob, struct fde_accumulator *accu, const fde *this_fde)
{
  const struct dwarf_cie *last_cie = 0;
  int encoding = ob->s.b.encoding;
  _Unwind_Ptr base = base_from_object (ob->s.b.encoding, ob);

  for (; ! last_fde (ob, this_fde); this_fde = next_fde (this_fde))
    {
      const struct dwarf_cie *this_cie;


      if (this_fde->CIE_delta == 0)
 continue;

      if (ob->s.b.mixed_encoding)
 {


   this_cie = get_cie (this_fde);
   if (this_cie != last_cie)
     {
       last_cie = this_cie;
       encoding = get_cie_encoding (this_cie);
       base = base_from_object (encoding, ob);
     }
 }

      if (encoding == DW_EH_PE_absptr)
 {
   if (*(_Unwind_Ptr *) this_fde->pc_begin == 0)
     continue;
 }
      else
 {
   _Unwind_Ptr pc_begin, mask;

   read_encoded_value_with_base (encoding, base, this_fde->pc_begin,
     &pc_begin);





   mask = size_of_encoded_value (encoding);
   if (mask < sizeof (void *))
     mask = (1L << (mask << 3)) - 1;
   else
     mask = -1;

   if ((pc_begin & mask) == 0)
     continue;
 }

      fde_insert (accu, this_fde);
    }
}
