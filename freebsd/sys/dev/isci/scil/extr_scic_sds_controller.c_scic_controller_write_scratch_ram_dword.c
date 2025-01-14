
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 int SCI_SUCCESS ;
 int SCU_MAX_ZPT_DWORD_INDEX ;
 int scic_controller_get_scratch_ram_size (scalar_t__) ;
 int scu_controller_scratch_ram_register_write (int *,int,int) ;
 int scu_controller_scratch_ram_register_write_ext (int *,int,int) ;

SCI_STATUS scic_controller_write_scratch_ram_dword(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 offset,
   U32 value
)
{
   U32 zpt_index;

   if (offset < scic_controller_get_scratch_ram_size(controller))
   {
      SCIC_SDS_CONTROLLER_T * scic_controller = (SCIC_SDS_CONTROLLER_T *)controller;

      if(offset <= SCU_MAX_ZPT_DWORD_INDEX)
      {
         zpt_index = offset + (offset - (offset % 4)) + 4;

         scu_controller_scratch_ram_register_write(scic_controller,zpt_index,value);
      }
      else
      {
         offset = offset - 132;

         zpt_index = offset + (offset - (offset % 4)) + 4;

         scu_controller_scratch_ram_register_write_ext(scic_controller,zpt_index,value);

      }

      return SCI_SUCCESS;
   }
   else
   {
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;
   }
}
