
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_READ_12 ;
 int * sati_cb_get_cdb_address (void*) ;
 scalar_t__ sati_device_state_stopped (TYPE_1__*,void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_read_32_bit_lba_translate_command (TYPE_1__*,void*,void*,int,int) ;

SATI_STATUS sati_read_12_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U32 sector_count = (sati_get_cdb_byte(cdb, 6) << 24) |
                        (sati_get_cdb_byte(cdb, 7) << 16) |
                        (sati_get_cdb_byte(cdb, 8) << 8) |
                        (sati_get_cdb_byte(cdb, 9));

   if(sati_device_state_stopped(sequence, scsi_io))
   {
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      sequence->type = SATI_SEQUENCE_READ_12;

      return sati_read_32_bit_lba_translate_command(
                sequence, scsi_io, ata_io, sector_count, 11
             );
   }
}
