
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ai_err_packet_too_big; int ai_err_no_buf; } ;
struct TYPE_3__ {int set_prod_addr; } ;
struct ecore_ll2_info {TYPE_2__ input; TYPE_1__ rx_queue; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_ll2_error_handle { ____Placeholder_ecore_ll2_error_handle } ecore_ll2_error_handle ;
typedef enum core_error_handle { ____Placeholder_core_error_handle } core_error_handle ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int CORE_RX_ACTION_ON_ERROR_NO_BUFF ;
 int CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG ;
 int DIRECT_REG_WR (struct ecore_hwfn*,int ,int) ;
 int ECORE_LL2_RX_REGISTERED (struct ecore_ll2_info*) ;
 int ECORE_SUCCESS ;
 int SET_FIELD (int ,int ,int) ;
 int ecore_ll2_get_error_choice (int) ;
 int ecore_sp_ll2_rx_queue_start (struct ecore_hwfn*,struct ecore_ll2_info*,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_ll2_establish_connection_rx(struct ecore_hwfn *p_hwfn,
             struct ecore_ll2_info *p_ll2_conn)
{
 enum ecore_ll2_error_handle error_input;
 enum core_error_handle error_mode;
 u8 action_on_error = 0;

 if (!ECORE_LL2_RX_REGISTERED(p_ll2_conn))
  return ECORE_SUCCESS;

 DIRECT_REG_WR(p_hwfn, p_ll2_conn->rx_queue.set_prod_addr, 0x0);
 error_input = p_ll2_conn->input.ai_err_packet_too_big;
 error_mode = ecore_ll2_get_error_choice(error_input);
 SET_FIELD(action_on_error,
    CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG, error_mode);
 error_input = p_ll2_conn->input.ai_err_no_buf;
 error_mode = ecore_ll2_get_error_choice(error_input);
 SET_FIELD(action_on_error,
    CORE_RX_ACTION_ON_ERROR_NO_BUFF, error_mode);

 return ecore_sp_ll2_rx_queue_start(p_hwfn, p_ll2_conn, action_on_error);
}
