
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_IO_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scif_sas_io_request_state_handler_table ;

__attribute__((used)) static
void scif_sas_io_request_completed_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T *)object;

   SET_STATE_HANDLER(
      &fw_io->parent,
      scif_sas_io_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );
}
