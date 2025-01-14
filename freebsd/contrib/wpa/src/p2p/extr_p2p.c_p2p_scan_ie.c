
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_data {int dev_capab; scalar_t__ p2ps_seek_count; scalar_t__ p2ps_seek; scalar_t__ ext_listen_interval; int ext_listen_period; TYPE_1__* cfg; scalar_t__* vendor_elem; scalar_t__ wfd_ie_probe_req; } ;
struct TYPE_2__ {scalar_t__ channel; scalar_t__ reg_class; int country; } ;


 unsigned int BAND_60_GHZ ;
 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ;
 int P2P_DEV_CAPAB_SERVICE_DISCOVERY ;
 size_t VENDOR_ELEM_PROBE_REQ_P2P ;
 int p2p_buf_add_capability (struct wpabuf*,int,int ) ;
 int p2p_buf_add_device_id (struct wpabuf*,int const*) ;
 int p2p_buf_add_device_info (struct wpabuf*,struct p2p_data*,int *) ;
 int p2p_buf_add_ext_listen_timing (struct wpabuf*,int ,scalar_t__) ;
 int* p2p_buf_add_ie_hdr (struct wpabuf*) ;
 int p2p_buf_add_listen_channel (struct wpabuf*,int ,scalar_t__,scalar_t__) ;
 int p2p_buf_add_service_hash (struct wpabuf*,struct p2p_data*) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int*) ;
 int wpabuf_put_buf (struct wpabuf*,scalar_t__) ;

void p2p_scan_ie(struct p2p_data *p2p, struct wpabuf *ies, const u8 *dev_id,
   unsigned int bands)
{
 u8 dev_capab;
 u8 *len;






 if (p2p->vendor_elem && p2p->vendor_elem[VENDOR_ELEM_PROBE_REQ_P2P])
  wpabuf_put_buf(ies,
          p2p->vendor_elem[VENDOR_ELEM_PROBE_REQ_P2P]);

 len = p2p_buf_add_ie_hdr(ies);

 dev_capab = p2p->dev_capab & ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY;


 if (p2p->p2ps_seek && p2p->p2ps_seek_count)
  dev_capab |= P2P_DEV_CAPAB_SERVICE_DISCOVERY;

 p2p_buf_add_capability(ies, dev_capab, 0);

 if (dev_id)
  p2p_buf_add_device_id(ies, dev_id);
 if (p2p->cfg->reg_class && p2p->cfg->channel)
  p2p_buf_add_listen_channel(ies, p2p->cfg->country,
        p2p->cfg->reg_class,
        p2p->cfg->channel);
 if (p2p->ext_listen_interval)
  p2p_buf_add_ext_listen_timing(ies, p2p->ext_listen_period,
           p2p->ext_listen_interval);

 if (bands & BAND_60_GHZ)
  p2p_buf_add_device_info(ies, p2p, ((void*)0));

 if (p2p->p2ps_seek && p2p->p2ps_seek_count)
  p2p_buf_add_service_hash(ies, p2p);


 p2p_buf_update_ie_hdr(ies, len);
}
