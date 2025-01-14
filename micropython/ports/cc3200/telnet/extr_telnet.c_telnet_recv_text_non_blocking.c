
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int telnet_result_t ;
typedef scalar_t__ _i16 ;
struct TYPE_2__ {scalar_t__ timeout; int n_sd; } ;


 int E_TELNET_RESULT_AGAIN ;
 int E_TELNET_RESULT_FAILED ;
 int E_TELNET_RESULT_OK ;
 scalar_t__ SL_EAGAIN ;
 scalar_t__ sl_Recv (int ,void*,scalar_t__,int ) ;
 TYPE_1__ telnet_data ;
 int telnet_parse_input (void*,scalar_t__*) ;
 int telnet_reset () ;

__attribute__((used)) static telnet_result_t telnet_recv_text_non_blocking (void *buff, _i16 Maxlen, _i16 *rxLen) {
    *rxLen = sl_Recv(telnet_data.n_sd, buff, Maxlen, 0);

    if (*rxLen > 0) {
        telnet_data.timeout = 0;
        telnet_parse_input (buff, rxLen);
        if (*rxLen > 0) {
            return E_TELNET_RESULT_OK;
        }
    }
    else if (*rxLen != SL_EAGAIN) {

        telnet_reset();
        return E_TELNET_RESULT_FAILED;
    }
    return E_TELNET_RESULT_AGAIN;
}
