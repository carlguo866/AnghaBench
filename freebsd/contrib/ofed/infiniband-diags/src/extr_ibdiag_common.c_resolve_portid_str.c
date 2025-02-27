
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct ibmad_port {int dummy; } ;
typedef int ibmad_gid_t ;
struct TYPE_11__ {int lid; int drpath; int member_0; } ;
typedef TYPE_1__ ib_portid_t ;
typedef enum MAD_DEST { ____Placeholder_MAD_DEST } MAD_DEST ;


 int AF_INET6 ;
 int IBWARN (char*,int) ;





 int IB_LID_VALID (int) ;
 int ib_portid_set (TYPE_1__*,int,int ,int ) ;
 int inet_pton (int ,char*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int resolve_gid (char*,int ,TYPE_1__*,int ,TYPE_1__*,struct ibmad_port const*) ;
 int resolve_guid (char*,int ,TYPE_1__*,int *,TYPE_1__*,struct ibmad_port const*) ;
 int resolve_self (char*,int ,TYPE_1__*,int*,int *) ;
 int str2drpath (int *,char*,int ,int ) ;
 int strtol (char*,char**,int ) ;
 int strtoull (char*,int ,int ) ;

int resolve_portid_str(char *ca_name, uint8_t ca_port, ib_portid_t * portid,
         char *addr_str, enum MAD_DEST dest_type,
         ib_portid_t *sm_id, const struct ibmad_port *srcport)
{
 ibmad_gid_t gid;
 uint64_t guid;
 int lid;
 char *routepath;
 ib_portid_t selfportid = { 0 };
 int selfport = 0;

 memset(portid, 0, sizeof *portid);

 switch (dest_type) {
 case 128:
  lid = strtol(addr_str, 0, 0);
  if (!IB_LID_VALID(lid))
   return -1;
  return ib_portid_set(portid, lid, 0, 0);

 case 132:
  if (str2drpath(&portid->drpath, addr_str, 0, 0) < 0)
   return -1;
  return 0;

 case 129:
  if (!(guid = strtoull(addr_str, 0, 0)))
   return -1;


  return resolve_guid(ca_name, ca_port, portid, &guid, sm_id,
        srcport);

 case 131:
  lid = strtol(addr_str, &routepath, 0);
  routepath++;
  if (!IB_LID_VALID(lid))
   return -1;
  ib_portid_set(portid, lid, 0, 0);


  if (resolve_self(ca_name, ca_port, &selfportid, &selfport,
     ((void*)0)) < 0)
   return -1;
  if (str2drpath(&portid->drpath, routepath, selfportid.lid, 0) <
      0)
   return -1;
  return 0;

 case 130:
  if (inet_pton(AF_INET6, addr_str, &gid) <= 0)
   return -1;
  return resolve_gid(ca_name, ca_port, portid, gid, sm_id,
       srcport);
 default:
  IBWARN("bad dest_type %d", dest_type);
 }

 return -1;
}
