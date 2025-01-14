
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_8__ {int allocation_length; void* state; void* type; TYPE_1__* device; } ;
struct TYPE_7__ {int max_blocks_per_microcode_command; int min_blocks_per_microcode_command; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_MICROCODE_DOWNLOAD_SAVE ;
 int ATA_MICROCODE_OFFSET_DOWNLOAD ;
 int DOWNLOAD_MICROCODE_BLOCK_SIZE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 void* SATI_SEQUENCE_STATE_AWAIT_RESPONSE ;
 void* SATI_SEQUENCE_STATE_FINAL ;
 void* SATI_SEQUENCE_WRITE_BUFFER ;
 void* SATI_SEQUENCE_WRITE_BUFFER_MICROCODE ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;



 int sati_ata_download_microcode_construct (void*,TYPE_2__*,int ,int,int) ;
 int sati_ata_write_buffer_construct (void*,TYPE_2__*) ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_write_buffer_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   SATI_STATUS status = SATI_FAILURE;
   U32 allocation_length;
   U32 allocation_blocks;
   U32 buffer_offset;

   allocation_length = ((sati_get_cdb_byte(cdb, 6) << 16) |
                        (sati_get_cdb_byte(cdb, 7) << 8) |
                        (sati_get_cdb_byte(cdb, 8)));

   buffer_offset = ((sati_get_cdb_byte(cdb, 3) << 16) |
                    (sati_get_cdb_byte(cdb, 4) << 8) |
                    (sati_get_cdb_byte(cdb, 5)));

   sequence->allocation_length = allocation_length;
   allocation_blocks = allocation_length / DOWNLOAD_MICROCODE_BLOCK_SIZE;

   switch(sati_get_cdb_byte(cdb, 1))
   {
      case 128:
         if((allocation_length == DOWNLOAD_MICROCODE_BLOCK_SIZE) &&
            (buffer_offset == 0) &&
            (sati_get_cdb_byte(cdb, 2) == 0))
         {
            sati_ata_write_buffer_construct(ata_io, sequence);
            sequence->type = SATI_SEQUENCE_WRITE_BUFFER;
            sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
            status = SATI_SUCCESS;
         }
         else
         {
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ILLEGAL_REQUEST,
               SCSI_ASC_INVALID_FIELD_IN_CDB,
               SCSI_ASCQ_INVALID_FIELD_IN_CDB
            );

            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
      break;

      case 130:

         sati_ata_download_microcode_construct(
            ata_io,
            sequence,
            ATA_MICROCODE_DOWNLOAD_SAVE,
            allocation_length,
            buffer_offset
         );

         sequence->type = SATI_SEQUENCE_WRITE_BUFFER_MICROCODE;
         sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
         status = SATI_SUCCESS;
      break;

      case 129:
         if(((allocation_length & 0x000001FF) == 0) &&
            ((buffer_offset & 0x000001FF) == 0) &&
            (allocation_blocks <= sequence->device->max_blocks_per_microcode_command) &&
            ((allocation_blocks >= sequence->device->min_blocks_per_microcode_command) ||
            (allocation_length == 0)))
         {
            sati_ata_download_microcode_construct(
               ata_io,
               sequence,
               ATA_MICROCODE_OFFSET_DOWNLOAD,
               allocation_length,
               buffer_offset
            );

            sequence->type = SATI_SEQUENCE_WRITE_BUFFER_MICROCODE;
            sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
            status = SATI_SUCCESS;
         }
         else
         {
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ILLEGAL_REQUEST,
               SCSI_ASC_INVALID_FIELD_IN_CDB,
               SCSI_ASCQ_INVALID_FIELD_IN_CDB
            );

            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
      break;

      default:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_CDB,
            SCSI_ASCQ_INVALID_FIELD_IN_CDB
         );

         sequence->state = SATI_SEQUENCE_STATE_FINAL;
         status = SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;
   }
   return status;
}
