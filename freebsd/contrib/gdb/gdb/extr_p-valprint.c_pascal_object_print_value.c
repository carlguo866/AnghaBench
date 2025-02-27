
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct obstack {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BASETYPE_VIA_VIRTUAL (struct type*,int) ;
 int TYPE_BASECLASS (struct type*,int) ;
 int TYPE_LENGTH (struct type*) ;
 char* TYPE_NAME (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 scalar_t__ alloca (int) ;
 int baseclass_offset (struct type*,int,char*,scalar_t__) ;
 struct type* check_typedef (int ) ;
 struct obstack dont_print_vb_obstack ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int fputs_filtered (char*,struct ui_file*) ;
 scalar_t__ obstack_base (struct obstack*) ;
 int obstack_finish (struct obstack*) ;
 int obstack_free (struct obstack*,struct type**) ;
 scalar_t__ obstack_next_free (struct obstack*) ;
 int obstack_ptr_grow (struct obstack*,struct type*) ;
 int pascal_object_print_value_fields (struct type*,char*,scalar_t__,struct ui_file*,int,int,int,struct type**,int ) ;
 int print_spaces_filtered (int,struct ui_file*) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;

void
pascal_object_print_value (struct type *type, char *valaddr, CORE_ADDR address,
      struct ui_file *stream, int format, int recurse,
      enum val_prettyprint pretty,
      struct type **dont_print_vb)
{
  struct obstack tmp_obstack;
  struct type **last_dont_print
  = (struct type **) obstack_next_free (&dont_print_vb_obstack);
  int i, n_baseclasses = TYPE_N_BASECLASSES (type);

  if (dont_print_vb == 0)
    {



      tmp_obstack = dont_print_vb_obstack;

      obstack_finish (&dont_print_vb_obstack);
    }

  for (i = 0; i < n_baseclasses; i++)
    {
      int boffset;
      struct type *baseclass = check_typedef (TYPE_BASECLASS (type, i));
      char *basename = TYPE_NAME (baseclass);
      char *base_valaddr;

      if (BASETYPE_VIA_VIRTUAL (type, i))
 {
   struct type **first_dont_print
   = (struct type **) obstack_base (&dont_print_vb_obstack);

   int j = (struct type **) obstack_next_free (&dont_print_vb_obstack)
   - first_dont_print;

   while (--j >= 0)
     if (baseclass == first_dont_print[j])
       goto flush_it;

   obstack_ptr_grow (&dont_print_vb_obstack, baseclass);
 }

      boffset = baseclass_offset (type, i, valaddr, address);

      if (pretty)
 {
   fprintf_filtered (stream, "\n");
   print_spaces_filtered (2 * recurse, stream);
 }
      fputs_filtered ("<", stream);



      fputs_filtered (basename ? basename : "", stream);
      fputs_filtered ("> = ", stream);





      if (boffset != -1 && (boffset < 0 || boffset >= TYPE_LENGTH (type)))
 {

   base_valaddr = (char *) alloca (TYPE_LENGTH (baseclass));
   if (target_read_memory (address + boffset, base_valaddr,
      TYPE_LENGTH (baseclass)) != 0)
     boffset = -1;
 }
      else
 base_valaddr = valaddr + boffset;

      if (boffset == -1)
 fprintf_filtered (stream, "<invalid address>");
      else
 pascal_object_print_value_fields (baseclass, base_valaddr, address + boffset,
       stream, format, recurse, pretty,
       (struct type **) obstack_base (&dont_print_vb_obstack),
       0);
      fputs_filtered (", ", stream);

    flush_it:
      ;
    }

  if (dont_print_vb == 0)
    {


      obstack_free (&dont_print_vb_obstack, last_dont_print);


      dont_print_vb_obstack = tmp_obstack;
    }
}
