
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ external_part; scalar_t__ me_record; } ;
struct TYPE_31__ {TYPE_1__ r; int * offset; } ;
struct TYPE_34__ {unsigned char* input_p; scalar_t__ first_byte; TYPE_7__* abfd; } ;
struct TYPE_30__ {int number_of_maus_in_address; int number_of_bits_mau; } ;
struct TYPE_29__ {char* processor; char const* module_name; } ;
struct TYPE_32__ {TYPE_5__ w; TYPE_8__ h; TYPE_4__ ad; TYPE_3__ mb; scalar_t__ section_table_size; int * section_table; scalar_t__ external_reference_max_index; int external_reference_min_index; int external_symbol_min_index; scalar_t__ external_symbol_max_index; scalar_t__ section_count; void* read_data; void* read_symbols; } ;
typedef TYPE_6__ ieee_data_type ;
typedef int file_ptr ;
typedef int buffer ;
typedef int bfd_target ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd_arch_info_type ;
struct TYPE_28__ {TYPE_6__* ieee_data; } ;
struct TYPE_33__ {char const* filename; TYPE_2__ tdata; int const* xvec; int flags; int const* arch_info; } ;
typedef TYPE_7__ bfd ;


 scalar_t__ CONST_STRNEQ (char*,char*) ;
 void* FALSE ;
 int HAS_SYMS ;
 TYPE_6__* IEEE_DATA (TYPE_7__*) ;
 int IEEE_PUBLIC_BASE ;
 int IEEE_REFERENCE_BASE ;
 unsigned int Module_Beginning ;
 unsigned int N_W_VARIABLES ;
 int SEEK_SET ;
 char TOUPPER (char) ;
 scalar_t__ bfd_alloc (TYPE_7__*,scalar_t__) ;
 int bfd_bread (void*,scalar_t__,TYPE_7__*) ;
 int bfd_error_wrong_format ;
 int bfd_release (TYPE_7__*,TYPE_6__*) ;
 int * bfd_scan_arch (char*) ;
 scalar_t__ bfd_seek (TYPE_7__*,int ,int ) ;
 int bfd_set_error (int ) ;
 scalar_t__ ieee_address_descriptor_enum ;
 scalar_t__ ieee_assign_value_to_variable_enum ;
 int ieee_mkobject (TYPE_7__*) ;
 int ieee_slurp_debug (TYPE_7__*) ;
 int ieee_slurp_section_data (TYPE_7__*) ;
 int ieee_slurp_sections (TYPE_7__*) ;
 scalar_t__ ieee_variable_L_enum ;
 scalar_t__ ieee_variable_M_enum ;
 int next_byte (TYPE_8__*) ;
 int parse_i (TYPE_8__*,int *) ;
 int parse_int (TYPE_8__*,int *) ;
 int read_2bytes (TYPE_8__*) ;
 void* read_id (TYPE_8__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strncat (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 int this_byte (TYPE_8__*) ;
 unsigned int this_byte_and_next (TYPE_8__*) ;

__attribute__((used)) static const bfd_target *
ieee_object_p (bfd *abfd)
{
  char *processor;
  unsigned int part;
  ieee_data_type *ieee;
  unsigned char buffer[300];
  ieee_data_type *save = IEEE_DATA (abfd);
  bfd_size_type amt;

  abfd->tdata.ieee_data = 0;
  ieee_mkobject (abfd);

  ieee = IEEE_DATA (abfd);
  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0)
    goto fail;


  bfd_bread ((void *) buffer, (bfd_size_type) sizeof (buffer), abfd);

  ieee->h.input_p = buffer;
  if (this_byte_and_next (&(ieee->h)) != Module_Beginning)
    goto got_wrong_format;

  ieee->read_symbols = FALSE;
  ieee->read_data = FALSE;
  ieee->section_count = 0;
  ieee->external_symbol_max_index = 0;
  ieee->external_symbol_min_index = IEEE_PUBLIC_BASE;
  ieee->external_reference_min_index = IEEE_REFERENCE_BASE;
  ieee->external_reference_max_index = 0;
  ieee->h.abfd = abfd;
  ieee->section_table = ((void*)0);
  ieee->section_table_size = 0;

  processor = ieee->mb.processor = read_id (&(ieee->h));
  if (strcmp (processor, "LIBRARY") == 0)
    goto got_wrong_format;
  ieee->mb.module_name = read_id (&(ieee->h));
  if (abfd->filename == (const char *) ((void*)0))
    abfd->filename = ieee->mb.module_name;


  {
    const bfd_arch_info_type *arch;
    char family[10];





    if ((processor[0] == '6') && (processor[1] == '8'))
      {
 if (processor[2] == '3')
   {
     switch (processor[3])
       {
       case '0':
       case '2':
       case '5':
  strcpy (family, "68000");
  break;

       case '3':

       case '6':
       case '7':
  strcpy (family, "68332");
  break;

       case '4':
  if (processor[4] == '9')
    strcpy (family, "68030");
  else
    strcpy (family, "68332");
  break;

       default:
  strcpy (family, "68332");
       }
   }
 else if (TOUPPER (processor[3]) == 'F')
   strcpy (family, "68332");
 else if ((TOUPPER (processor[3]) == 'C')
   && ((TOUPPER (processor[2]) == 'E')
       || (TOUPPER (processor[2]) == 'H')
       || (TOUPPER (processor[2]) == 'L')))
   {
     strcpy (family, "68");
     strncat (family, processor + 4, 7);
     family[9] = '\0';
   }
 else
   {
     strncpy (family, processor, 9);
     family[9] = '\0';
   }
      }
    else if ((CONST_STRNEQ (processor, "cpu32"))
      || (CONST_STRNEQ (processor, "CPU32")))
      strcpy (family, "68332");
    else
      {
 strncpy (family, processor, 9);
 family[9] = '\0';
      }

    arch = bfd_scan_arch (family);
    if (arch == 0)
      goto got_wrong_format;
    abfd->arch_info = arch;
  }

  if (this_byte (&(ieee->h)) != (int) ieee_address_descriptor_enum)
    goto fail;

  next_byte (&(ieee->h));

  if (! parse_int (&(ieee->h), &ieee->ad.number_of_bits_mau))
    goto fail;

  if (! parse_int (&(ieee->h), &ieee->ad.number_of_maus_in_address))
    goto fail;


  if (this_byte (&(ieee->h)) == (int) ieee_variable_L_enum
      || this_byte (&(ieee->h)) == (int) ieee_variable_M_enum)
    next_byte (&(ieee->h));

  for (part = 0; part < N_W_VARIABLES; part++)
    {
      bfd_boolean ok;

      if (read_2bytes (&(ieee->h)) != (int) ieee_assign_value_to_variable_enum)
 goto fail;

      if (this_byte_and_next (&(ieee->h)) != part)
 goto fail;

      ieee->w.offset[part] = parse_i (&(ieee->h), &ok);
      if (! ok)
 goto fail;
    }

  if (ieee->w.r.external_part != 0)
    abfd->flags = HAS_SYMS;






  amt = ieee->w.r.me_record + 1;
  IEEE_DATA (abfd)->h.first_byte = bfd_alloc (ieee->h.abfd, amt);
  if (!IEEE_DATA (abfd)->h.first_byte)
    goto fail;
  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0)
    goto fail;


  bfd_bread ((void *) (IEEE_DATA (abfd)->h.first_byte),
     (bfd_size_type) ieee->w.r.me_record + 1, abfd);

  ieee_slurp_sections (abfd);

  if (! ieee_slurp_debug (abfd))
    goto fail;



  if (! ieee_slurp_section_data (abfd))
    goto fail;

  return abfd->xvec;
got_wrong_format:
  bfd_set_error (bfd_error_wrong_format);
fail:
  bfd_release (abfd, ieee);
  abfd->tdata.ieee_data = save;
  return (const bfd_target *) ((void*)0);
}
