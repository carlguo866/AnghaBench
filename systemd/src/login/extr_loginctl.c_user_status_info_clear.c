
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sessions; } ;
typedef TYPE_1__ UserStatusInfo ;


 int strv_free (int ) ;
 int zero (TYPE_1__) ;

__attribute__((used)) static void user_status_info_clear(UserStatusInfo *info) {
        if (info) {
                strv_free(info->sessions);
                zero(*info);
        }
}
