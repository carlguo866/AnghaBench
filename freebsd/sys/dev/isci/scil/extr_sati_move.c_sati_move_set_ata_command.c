
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_3__ {scalar_t__ data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 scalar_t__ SATI_DATA_DIRECTION_OUT ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_command (int *,int ) ;

__attribute__((used)) static
void sati_move_set_ata_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_io,
   U8 write_opcode,
   U8 read_opcode
)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   if (sequence->data_direction == SATI_DATA_DIRECTION_OUT)
      sati_set_ata_command(register_fis, write_opcode);
   else
      sati_set_ata_command(register_fis, read_opcode);
}
