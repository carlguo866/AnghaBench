
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;


 scalar_t__ SCSI_MODE_PAGE_01_LENGTH ;
 scalar_t__ SCSI_MODE_PAGE_02_LENGTH ;
 scalar_t__ SCSI_MODE_PAGE_08_LENGTH ;
 scalar_t__ SCSI_MODE_PAGE_0A_LENGTH ;
 scalar_t__ SCSI_MODE_PAGE_1C_LENGTH ;
 int sati_mode_sense_10_translate_data (int *,int *,void*,scalar_t__) ;
 int sati_mode_sense_all_pages_translate_data (int *,void*,int *,int ) ;
 scalar_t__ sati_mode_sense_calculate_page_header (void*,int) ;

void sati_mode_sense_10_all_pages_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_input_data,
   void * scsi_io
)
{
   ATA_IDENTIFY_DEVICE_DATA_T * identify = (ATA_IDENTIFY_DEVICE_DATA_T*)
                                           ata_input_data;
   U8 data_length = (U8) sati_mode_sense_calculate_page_header(scsi_io, 10)
                           + SCSI_MODE_PAGE_01_LENGTH
                           + SCSI_MODE_PAGE_02_LENGTH
                           + SCSI_MODE_PAGE_08_LENGTH
                           + SCSI_MODE_PAGE_0A_LENGTH
                           + SCSI_MODE_PAGE_1C_LENGTH;
   U32 page_offset = sati_mode_sense_10_translate_data(
                         sequence, identify, scsi_io, data_length
                      );

   sati_mode_sense_all_pages_translate_data(
      sequence, scsi_io, identify, page_offset
   );
}
