
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;


 int sati_set_sense_data_byte (int*,int,int,int) ;

__attribute__((used)) static
void sati_scsi_common_fixed_sense_construct(
   U8 * sense_data,
   U32 sense_len,
   U8 sense_key,
   U8 additional_sense_code,
   U8 additional_sense_code_qualifier
)
{

   sati_set_sense_data_byte(sense_data, sense_len, 1, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 2, sense_key);



   sati_set_sense_data_byte(sense_data, sense_len, 7, (sense_len < 18 ? sense_len - 1 : 17) - 7);
   sati_set_sense_data_byte(sense_data, sense_len, 8, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 9, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 10, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 11, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 12, additional_sense_code);
   sati_set_sense_data_byte(sense_data, sense_len, 13, additional_sense_code_qualifier);
   sati_set_sense_data_byte(sense_data, sense_len, 14, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 15, 0x80);
   sati_set_sense_data_byte(sense_data, sense_len, 16, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 17, 0);
}
