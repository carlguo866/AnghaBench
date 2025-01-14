
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int * vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* ifvlan_ref ;
struct TYPE_8__ {int * ifv_vlp; } ;


 int EBUSY ;
 int EINVAL ;
 int IF_MINMTU ;
 TYPE_1__* ifnet_get_ifvlan (struct ifnet*) ;
 TYPE_1__* ifnet_get_ifvlan_retained (struct ifnet*) ;
 scalar_t__ ifvlan_flags_detaching (TYPE_1__*) ;
 int * ifvlan_get_vlan_parent_retained (TYPE_1__*) ;
 int ifvlan_new_mtu (TYPE_1__*,int) ;
 int ifvlan_release (TYPE_1__*) ;
 int vlan_lock () ;
 scalar_t__ vlan_parent_flags_detaching (int *) ;
 int vlan_parent_release (int *) ;
 int vlan_parent_signal (int *,char*) ;
 int vlan_parent_wait (int *,char*) ;
 int vlan_unlock () ;

__attribute__((used)) static int
vlan_set_mtu(struct ifnet * ifp, int mtu)
{
    int error = 0;
    ifvlan_ref ifv;
    vlan_parent_ref vlp;

    if (mtu < IF_MINMTU) {
 return (EINVAL);
    }
    vlan_lock();
    ifv = ifnet_get_ifvlan_retained(ifp);
    if (ifv == ((void*)0)) {
 vlan_unlock();
 return (EBUSY);
    }
    vlp = ifvlan_get_vlan_parent_retained(ifv);
    if (vlp == ((void*)0)) {
 vlan_unlock();
 ifvlan_release(ifv);
 if (mtu != 0) {
     return (EINVAL);
 }
 return (0);
    }
    vlan_parent_wait(vlp, "vlan_set_mtu");


    if (ifnet_get_ifvlan(ifp) != ifv
 || ifvlan_flags_detaching(ifv)) {
 error = EBUSY;
 goto signal_done;
    }
    if (ifv->ifv_vlp != vlp) {

 goto signal_done;
    }
    if (vlan_parent_flags_detaching(vlp)) {
 if (mtu != 0) {
     error = EINVAL;
 }
 goto signal_done;
    }
    error = ifvlan_new_mtu(ifv, mtu);

 signal_done:
    vlan_parent_signal(vlp, "vlan_set_mtu");
    vlan_unlock();
    vlan_parent_release(vlp);
    ifvlan_release(ifv);

    return (error);
}
