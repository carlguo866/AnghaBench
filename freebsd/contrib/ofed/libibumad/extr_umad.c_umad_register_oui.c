
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint8_t ;
struct ib_user_mad_reg_req {int qpn; int mgmt_class; int mgmt_class_version; long rmpp_version; int id; int method_mask; int oui; } ;


 int DEBUG (char*,int,...) ;
 int EINVAL ;
 int EPERM ;
 int IB_USER_MAD_REGISTER_AGENT ;
 int TRACE (char*,int,int,int,int,int,int,long*) ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ib_user_mad_reg_req*,int) ;
 int ioctl (int,int ,void*) ;
 int memcpy (int ,long*,int) ;
 int memset (int ,int ,int) ;

int umad_register_oui(int fd, int mgmt_class, uint8_t rmpp_version,
        uint8_t oui[3], long method_mask[])
{
 struct ib_user_mad_reg_req req;

 TRACE("fd %d mgmt_class %u rmpp_version %d oui 0x%x%x%x method_mask %p",
       fd, mgmt_class, (int)rmpp_version, (int)oui[0], (int)oui[1],
       (int)oui[2], method_mask);

 if (mgmt_class < 0x30 || mgmt_class > 0x4f) {
  DEBUG("mgmt class %d not in vendor range 2", mgmt_class);
  return -EINVAL;
 }

 req.qpn = 1;
 req.mgmt_class = mgmt_class;
 req.mgmt_class_version = 1;
 memcpy(req.oui, oui, sizeof req.oui);
 req.rmpp_version = rmpp_version;

 if (method_mask)
  memcpy(req.method_mask, method_mask, sizeof req.method_mask);
 else
  memset(req.method_mask, 0, sizeof req.method_mask);

 VALGRIND_MAKE_MEM_DEFINED(&req, sizeof req);

 if (!ioctl(fd, IB_USER_MAD_REGISTER_AGENT, (void *)&req)) {
  DEBUG
      ("fd %d registered to use agent %d qp %d class 0x%x oui %p",
       fd, req.id, req.qpn, req.mgmt_class, oui);
  return req.id;
 }

 DEBUG("fd %d registering qp %d class 0x%x version %d oui %p failed: %m",
       fd, req.qpn, req.mgmt_class, req.mgmt_class_version, oui);
 return -EPERM;
}
