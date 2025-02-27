
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee_handle {unsigned int name_indx; int cxx; int abfd; int vars; TYPE_2__* type_stack; } ;
typedef enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_3__ {unsigned int size; scalar_t__ referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;







 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int abort () ;
 int assert (int) ;
 int ieee_add_range (struct ieee_handle*,scalar_t__,int,int ) ;
 scalar_t__ ieee_atn_record_enum ;
 int ieee_buffer_emptyp (int *) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_genreg_to_regno (int ,int) ;
 scalar_t__ ieee_nn_record ;
 unsigned int ieee_pop_type (struct ieee_handle*) ;
 int ieee_write_2bytes (struct ieee_handle*,int) ;
 int ieee_write_asn (struct ieee_handle*,unsigned int,int) ;
 int ieee_write_atn65 (struct ieee_handle*,unsigned int,char const*) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char const*) ;
 int ieee_write_number (struct ieee_handle*,int) ;

__attribute__((used)) static bfd_boolean
ieee_variable (void *p, const char *name, enum debug_var_kind kind,
        bfd_vma val)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int name_indx;
  unsigned int size;
  bfd_boolean referencep;
  unsigned int type_indx;
  bfd_boolean asn;
  int refflag;

  size = info->type_stack->type.size;
  referencep = info->type_stack->type.referencep;
  type_indx = ieee_pop_type (info);

  assert (! ieee_buffer_emptyp (&info->vars));
  if (! ieee_change_buffer (info, &info->vars))
    return FALSE;

  name_indx = info->name_indx;
  ++info->name_indx;


  if (! ieee_write_byte (info, (int) ieee_nn_record)
      || ! ieee_write_number (info, name_indx)
      || ! ieee_write_id (info, name)
      || ! ieee_write_2bytes (info, (int) ieee_atn_record_enum)
      || ! ieee_write_number (info, name_indx)
      || ! ieee_write_number (info, type_indx))
    return FALSE;
  switch (kind)
    {
    default:
      abort ();
      return FALSE;
    case 132:
      if (! ieee_write_number (info, 8)
   || ! ieee_add_range (info, FALSE, val, val + size))
 return FALSE;
      refflag = 0;
      asn = TRUE;
      break;
    case 128:
      if (! ieee_write_number (info, 3)
   || ! ieee_add_range (info, FALSE, val, val + size))
 return FALSE;
      refflag = 1;
      asn = TRUE;
      break;
    case 130:
      if (! ieee_write_number (info, 3)
   || ! ieee_add_range (info, FALSE, val, val + size))
 return FALSE;
      refflag = 2;
      asn = TRUE;
      break;
    case 131:
      if (! ieee_write_number (info, 1)
   || ! ieee_write_number (info, val))
 return FALSE;
      refflag = 2;
      asn = FALSE;
      break;
    case 129:
      if (! ieee_write_number (info, 2)
   || ! ieee_write_number (info,
      ieee_genreg_to_regno (info->abfd, val)))
 return FALSE;
      refflag = 2;
      asn = FALSE;
      break;
    }

  if (asn)
    {
      if (! ieee_write_asn (info, name_indx, val))
 return FALSE;
    }




  if (referencep)
    {
      unsigned int nindx;

      nindx = info->name_indx;
      ++info->name_indx;





      if (refflag != 2)
 {
   if (! ieee_change_buffer (info, &info->cxx))
     return FALSE;
 }

      if (! ieee_write_byte (info, (int) ieee_nn_record)
   || ! ieee_write_number (info, nindx)
   || ! ieee_write_id (info, "")
   || ! ieee_write_2bytes (info, (int) ieee_atn_record_enum)
   || ! ieee_write_number (info, nindx)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, 62)
   || ! ieee_write_number (info, 80)
   || ! ieee_write_number (info, 3)
   || ! ieee_write_asn (info, nindx, 'R')
   || ! ieee_write_asn (info, nindx, refflag)
   || ! ieee_write_atn65 (info, nindx, name))
 return FALSE;
    }

  return TRUE;
}
