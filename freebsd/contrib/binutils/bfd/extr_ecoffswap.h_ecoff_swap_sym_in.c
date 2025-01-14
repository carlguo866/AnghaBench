
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sym_ext {int* s_bits1; int* s_bits2; int* s_bits3; int* s_bits4; int s_value; int s_iss; } ;
typedef int bfd ;
struct TYPE_3__ {long iss; int st; int sc; int reserved; int index; int value; } ;
typedef TYPE_1__ SYMR ;


 int ECOFF_GET_OFF (int *,int ) ;
 long H_GET_32 (int *,int ) ;
 int SYM_BITS1_SC_BIG ;
 int SYM_BITS1_SC_LITTLE ;
 int SYM_BITS1_SC_SH_LEFT_BIG ;
 int SYM_BITS1_SC_SH_LITTLE ;
 int SYM_BITS1_ST_BIG ;
 int SYM_BITS1_ST_LITTLE ;
 int SYM_BITS1_ST_SH_BIG ;
 int SYM_BITS1_ST_SH_LITTLE ;
 int SYM_BITS2_INDEX_BIG ;
 unsigned int SYM_BITS2_INDEX_LITTLE ;
 int SYM_BITS2_INDEX_SH_LEFT_BIG ;
 unsigned int SYM_BITS2_INDEX_SH_LITTLE ;
 int SYM_BITS2_RESERVED_BIG ;
 int SYM_BITS2_RESERVED_LITTLE ;
 int SYM_BITS2_SC_BIG ;
 int SYM_BITS2_SC_LITTLE ;
 int SYM_BITS2_SC_SH_BIG ;
 int SYM_BITS2_SC_SH_LEFT_LITTLE ;
 int SYM_BITS3_INDEX_SH_LEFT_BIG ;
 unsigned int SYM_BITS3_INDEX_SH_LEFT_LITTLE ;
 int SYM_BITS4_INDEX_SH_LEFT_BIG ;
 unsigned int SYM_BITS4_INDEX_SH_LEFT_LITTLE ;
 int abort () ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void
ecoff_swap_sym_in (bfd *abfd, void * ext_copy, SYMR *intern)
{
  struct sym_ext ext[1];

  *ext = *(struct sym_ext *) ext_copy;

  intern->iss = H_GET_32 (abfd, ext->s_iss);
  intern->value = ECOFF_GET_OFF (abfd, ext->s_value);







  if (bfd_header_big_endian (abfd))
    {
      intern->st = (ext->s_bits1[0] & SYM_BITS1_ST_BIG)
          >> SYM_BITS1_ST_SH_BIG;
      intern->sc = ((ext->s_bits1[0] & SYM_BITS1_SC_BIG)
          << SYM_BITS1_SC_SH_LEFT_BIG)
     | ((ext->s_bits2[0] & SYM_BITS2_SC_BIG)
          >> SYM_BITS2_SC_SH_BIG);
      intern->reserved = 0 != (ext->s_bits2[0] & SYM_BITS2_RESERVED_BIG);
      intern->index = ((ext->s_bits2[0] & SYM_BITS2_INDEX_BIG)
          << SYM_BITS2_INDEX_SH_LEFT_BIG)
     | (ext->s_bits3[0] << SYM_BITS3_INDEX_SH_LEFT_BIG)
     | (ext->s_bits4[0] << SYM_BITS4_INDEX_SH_LEFT_BIG);
    }
  else
    {
      intern->st = (ext->s_bits1[0] & SYM_BITS1_ST_LITTLE)
          >> SYM_BITS1_ST_SH_LITTLE;
      intern->sc = ((ext->s_bits1[0] & SYM_BITS1_SC_LITTLE)
          >> SYM_BITS1_SC_SH_LITTLE)
     | ((ext->s_bits2[0] & SYM_BITS2_SC_LITTLE)
          << SYM_BITS2_SC_SH_LEFT_LITTLE);
      intern->reserved = 0 != (ext->s_bits2[0] & SYM_BITS2_RESERVED_LITTLE);
      intern->index = ((ext->s_bits2[0] & SYM_BITS2_INDEX_LITTLE)
          >> SYM_BITS2_INDEX_SH_LITTLE)
     | (ext->s_bits3[0] << SYM_BITS3_INDEX_SH_LEFT_LITTLE)
     | ((unsigned int) ext->s_bits4[0]
        << SYM_BITS4_INDEX_SH_LEFT_LITTLE);
    }





}
