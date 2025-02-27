
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mibif {int dummy; } ;
struct ifbreq {int ifbr_ifsname; int ifbr_portno; } ;
struct ifbpstpreq {int ifbr_ifsname; int ifbr_portno; } ;
struct bridge_port {int port_no; int status; } ;
struct bridge_if {int dummy; } ;
typedef int int32_t ;


 int LOG_ERR ;
 int RowStatus_active ;
 struct bridge_port* bridge_new_port (struct mibif*,struct bridge_if*) ;
 struct bridge_port* bridge_port_bif_first (struct bridge_if*) ;
 struct bridge_port* bridge_port_bif_next (struct bridge_port*) ;
 int bridge_port_clearinfo_opstp (struct bridge_port*) ;
 struct ifbreq* bridge_port_find_ifstplist (int ,struct ifbreq*,int) ;
 int bridge_port_get_iflist (struct bridge_if*,struct ifbreq**) ;
 int bridge_port_get_ifstplist (struct bridge_if*,struct ifbreq**) ;
 int bridge_port_getinfo_conf (struct ifbreq*,struct bridge_port*) ;
 int bridge_port_getinfo_mibif (struct mibif*,struct bridge_port*) ;
 int bridge_port_getinfo_opstp (struct ifbreq*,struct bridge_port*) ;
 int free (struct ifbreq*) ;
 struct mibif* mib_find_if_sys (int ) ;
 int syslog (int ,char*,int ) ;

int
bridge_getinfo_bif_ports(struct bridge_if *bif)
{
 uint32_t i;
 int32_t buf_len;
 struct ifbreq *b_req_buf, *b_req;
 struct ifbpstpreq *bs_req_buf, *bs_req;
 struct bridge_port *bp;
 struct mibif *m_if;

 if ((buf_len = bridge_port_get_iflist(bif, &b_req_buf)) < 0)
  return (-1);

 for (i = 0; i < buf_len / sizeof(struct ifbreq); i++) {
  b_req = b_req_buf + i;

  if ((m_if = mib_find_if_sys(b_req->ifbr_portno)) != ((void*)0)) {

   if ((bp = bridge_new_port(m_if, bif)) != ((void*)0)) {
    bp->status = RowStatus_active;
    bridge_port_getinfo_conf(b_req, bp);
    bridge_port_getinfo_mibif(m_if, bp);
   }
  } else {
   syslog(LOG_ERR, "bridge member %s not present "
       "in mibII ifTable", b_req->ifbr_ifsname);
  }
 }
 free(b_req_buf);

 if ((buf_len = bridge_port_get_ifstplist(bif, &bs_req_buf)) < 0)
  return (-1);

 for (bp = bridge_port_bif_first(bif); bp != ((void*)0);
     bp = bridge_port_bif_next(bp)) {
  if ((bs_req = bridge_port_find_ifstplist(bp->port_no,
      bs_req_buf, buf_len)) == ((void*)0))
   bridge_port_clearinfo_opstp(bp);
  else
   bridge_port_getinfo_opstp(bs_req, bp);
 }
 free(bs_req_buf);

 return (i);
}
