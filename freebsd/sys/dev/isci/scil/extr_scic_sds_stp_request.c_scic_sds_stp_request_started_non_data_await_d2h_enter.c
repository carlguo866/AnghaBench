
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REQUEST_T ;


 int SCIC_SDS_STP_REQUEST_STARTED_NON_DATA_AWAIT_D2H_SUBSTATE ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_sds_stp_request_started_non_data_substate_handler_table ;

__attribute__((used)) static
void scic_sds_stp_request_started_non_data_await_d2h_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;

   SET_STATE_HANDLER(
      this_request,
      scic_sds_stp_request_started_non_data_substate_handler_table,
      SCIC_SDS_STP_REQUEST_STARTED_NON_DATA_AWAIT_D2H_SUBSTATE
   );
}
