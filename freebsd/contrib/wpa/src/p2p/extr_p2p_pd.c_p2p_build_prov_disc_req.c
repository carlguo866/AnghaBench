
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct p2ps_provision {int dummy; } ;
struct TYPE_6__ {int p2p_device_addr; } ;
struct p2p_device {int oper_ssid_len; int oper_ssid; TYPE_3__ info; int req_config_methods; int dialog_token; } ;
struct p2p_data {int dev_capab; scalar_t__* vendor_elem; scalar_t__ wfd_ie_prov_disc_req; TYPE_2__* p2ps_prov; TYPE_1__* cfg; scalar_t__ cross_connect; } ;
struct TYPE_5__ {int info; } ;
struct TYPE_4__ {scalar_t__ p2p_intra_bss; } ;


 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ;
 int P2P_GROUP_CAPAB_CROSS_CONN ;
 int P2P_GROUP_CAPAB_INTRA_BSS_DIST ;
 int P2P_GROUP_CAPAB_PERSISTENT_GROUP ;
 int P2P_GROUP_CAPAB_PERSISTENT_RECONN ;
 int P2P_PROV_DISC_REQ ;
 size_t VENDOR_ELEM_P2P_PD_REQ ;
 scalar_t__ os_strlen (int ) ;
 int p2p_buf_add_capability (struct wpabuf*,int,int ) ;
 int p2p_buf_add_device_info (struct wpabuf*,struct p2p_data*,int *) ;
 int p2p_buf_add_group_id (struct wpabuf*,int ,int ,int ) ;
 int * p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_public_action_hdr (struct wpabuf*,int ,int ) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 int p2p_build_wps_ie_config_methods (struct wpabuf*,int ) ;
 int p2ps_add_pd_req_attrs (struct p2p_data*,struct p2p_device*,struct wpabuf*,int ) ;
 struct wpabuf* wpabuf_alloc (int) ;
 size_t wpabuf_len (scalar_t__) ;
 int wpabuf_put_buf (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * p2p_build_prov_disc_req(struct p2p_data *p2p,
            struct p2p_device *dev,
            int join)
{
 struct wpabuf *buf;
 u8 *len;
 size_t extra = 0;
 u8 dialog_token = dev->dialog_token;
 u16 config_methods = dev->req_config_methods;
 struct p2p_device *go = join ? dev : ((void*)0);
 u8 group_capab;






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_PD_REQ])
  extra += wpabuf_len(p2p->vendor_elem[VENDOR_ELEM_P2P_PD_REQ]);

 if (p2p->p2ps_prov)
  extra += os_strlen(p2p->p2ps_prov->info) + 1 +
   sizeof(struct p2ps_provision);

 buf = wpabuf_alloc(1000 + extra);
 if (buf == ((void*)0))
  return ((void*)0);

 p2p_buf_add_public_action_hdr(buf, P2P_PROV_DISC_REQ, dialog_token);

 len = p2p_buf_add_ie_hdr(buf);

 group_capab = 0;
 if (p2p->p2ps_prov) {
  group_capab |= P2P_GROUP_CAPAB_PERSISTENT_GROUP;
  group_capab |= P2P_GROUP_CAPAB_PERSISTENT_RECONN;
  if (p2p->cross_connect)
   group_capab |= P2P_GROUP_CAPAB_CROSS_CONN;
  if (p2p->cfg->p2p_intra_bss)
   group_capab |= P2P_GROUP_CAPAB_INTRA_BSS_DIST;
 }
 p2p_buf_add_capability(buf, p2p->dev_capab &
          ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY,
          group_capab);
 p2p_buf_add_device_info(buf, p2p, ((void*)0));
 if (p2p->p2ps_prov) {
  p2ps_add_pd_req_attrs(p2p, dev, buf, config_methods);
 } else if (go) {
  p2p_buf_add_group_id(buf, go->info.p2p_device_addr,
         go->oper_ssid, go->oper_ssid_len);
 }
 p2p_buf_update_ie_hdr(buf, len);


 p2p_build_wps_ie_config_methods(buf, config_methods);






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_P2P_PD_REQ])
  wpabuf_put_buf(buf, p2p->vendor_elem[VENDOR_ELEM_P2P_PD_REQ]);

 return buf;
}
