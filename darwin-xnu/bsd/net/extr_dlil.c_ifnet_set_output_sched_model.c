
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ifclassq {int dummy; } ;
struct ifnet {int if_eflags; scalar_t__ if_output_sched_model; struct ifclassq if_snd; } ;
typedef int errno_t ;


 int EINVAL ;
 int ENXIO ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 int IFEF_TXSTART ;
 scalar_t__ IFNET_SCHED_MODEL_MAX ;
 int ifclassq_pktsched_setup (struct ifclassq*) ;

errno_t
ifnet_set_output_sched_model(struct ifnet *ifp, u_int32_t model)
{
 struct ifclassq *ifq;
 u_int32_t omodel;
 errno_t err;

 if (ifp == ((void*)0) || model >= IFNET_SCHED_MODEL_MAX)
  return (EINVAL);
 else if (!(ifp->if_eflags & IFEF_TXSTART))
  return (ENXIO);

 ifq = &ifp->if_snd;
 IFCQ_LOCK(ifq);
 omodel = ifp->if_output_sched_model;
 ifp->if_output_sched_model = model;
 if ((err = ifclassq_pktsched_setup(ifq)) != 0)
  ifp->if_output_sched_model = omodel;
 IFCQ_UNLOCK(ifq);

 return (err);
}
