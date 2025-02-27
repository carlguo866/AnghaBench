
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ _i16 ;
struct TYPE_2__ {scalar_t__ rxWindex; scalar_t__* rxBuffer; } ;


 int MAX (scalar_t__,int ) ;
 scalar_t__ SERVERS_USER_PASS_LEN_MAX ;
 scalar_t__* memchr (scalar_t__*,char,scalar_t__) ;
 scalar_t__ memcmp (char*,scalar_t__*,int ) ;
 int strlen (char*) ;
 TYPE_1__ telnet_data ;

__attribute__((used)) static int telnet_process_credential (char *credential, _i16 rxLen) {
    telnet_data.rxWindex += rxLen;
    if (telnet_data.rxWindex >= SERVERS_USER_PASS_LEN_MAX) {
        telnet_data.rxWindex = SERVERS_USER_PASS_LEN_MAX;
    }

    uint8_t *p = telnet_data.rxBuffer + SERVERS_USER_PASS_LEN_MAX;

    if ((p = memchr(telnet_data.rxBuffer, '\r', telnet_data.rxWindex)) || (telnet_data.rxWindex >= SERVERS_USER_PASS_LEN_MAX)) {
        uint8_t len = p - telnet_data.rxBuffer;

        telnet_data.rxWindex = 0;
        if ((len > 0) && (memcmp(credential, telnet_data.rxBuffer, MAX(len, strlen(credential))) == 0)) {
            return 1;
        }
        return -1;
    }
    return 0;
}
