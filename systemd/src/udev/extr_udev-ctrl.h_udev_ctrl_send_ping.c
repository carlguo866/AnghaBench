
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_ctrl {int dummy; } ;


 int UDEV_CTRL_PING ;
 int udev_ctrl_send (struct udev_ctrl*,int ,int ,int *) ;

__attribute__((used)) static inline int udev_ctrl_send_ping(struct udev_ctrl *uctrl) {
        return udev_ctrl_send(uctrl, UDEV_CTRL_PING, 0, ((void*)0));
}
