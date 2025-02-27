
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int num_phys; } ;
union ses_elm_sas_hdr {TYPE_1__ base_hdr; } ;
typedef int uint8_t ;
struct ses_elm_sas_type0_eip_hdr {int dummy; } ;
struct ses_elm_sas_type0_base_hdr {int dummy; } ;
struct ses_elm_sas_device_phy {int dummy; } ;
struct TYPE_13__ {struct ses_elm_sas_device_phy* sasdev_phys; } ;
struct TYPE_9__ {union ses_elm_sas_hdr* sas; } ;
struct ses_addl_status {TYPE_7__ proto_data; TYPE_2__ proto_hdr; } ;
struct TYPE_10__ {struct ses_addl_status addl; } ;
typedef TYPE_3__ ses_element_t ;
typedef int enc_softc_t ;
struct TYPE_11__ {TYPE_3__* elm_private; } ;
typedef TYPE_4__ enc_element_t ;
struct TYPE_12__ {TYPE_4__* elm_map; } ;
typedef TYPE_5__ enc_cache_t ;


 int EIO ;
 int ENC_VLOG (int *,char*,int) ;
 int bzero (TYPE_7__*,int) ;

__attribute__((used)) static int
ses_get_elm_addlstatus_sas_type0(enc_softc_t *enc, enc_cache_t *enc_cache,
     uint8_t *buf, int bufsiz, int eip, int nobj)
{
 int err, offset, physz;
 enc_element_t *obj;
 ses_element_t *elmpriv;
 struct ses_addl_status *addl;

 err = offset = 0;


 obj = &(enc_cache->elm_map[nobj]);
 elmpriv = obj->elm_private;
 addl = &(elmpriv->addl);

 addl->proto_hdr.sas = (union ses_elm_sas_hdr *)&buf[offset];


 bzero(&addl->proto_data, sizeof(addl->proto_data));
 if (addl->proto_hdr.sas->base_hdr.num_phys == 0)
  goto out;


 if (eip)
  offset += sizeof(struct ses_elm_sas_type0_eip_hdr);
 else
  offset += sizeof(struct ses_elm_sas_type0_base_hdr);


 physz = addl->proto_hdr.sas->base_hdr.num_phys;
 physz *= sizeof(struct ses_elm_sas_device_phy);
 if (physz > (bufsiz - offset + 4)) {
  ENC_VLOG(enc, "Element %d Device Phy List Beyond End Of Buffer\n",
      nobj);
  err = EIO;
  goto out;
 }


 addl->proto_data.sasdev_phys =
     (struct ses_elm_sas_device_phy *)&buf[offset];

out:
 return (err);
}
