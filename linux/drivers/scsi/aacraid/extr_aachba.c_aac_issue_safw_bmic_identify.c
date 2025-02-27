
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct aac_srb {int* cdb; int flags; } ;
struct aac_srb_unit {struct aac_srb srb; } ;
struct aac_dev {int dummy; } ;
struct aac_ciss_identify_pd {int dummy; } ;


 int AAC_MAX_LUN ;
 int CISS_IDENTIFY_PHYSICAL_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SRB_DataIn ;
 int aac_send_safw_bmic_cmd (struct aac_dev*,struct aac_srb_unit*,struct aac_ciss_identify_pd*,int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct aac_ciss_identify_pd*) ;
 struct aac_ciss_identify_pd* kmalloc (int,int ) ;
 int memset (struct aac_srb_unit*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aac_issue_safw_bmic_identify(struct aac_dev *dev,
 struct aac_ciss_identify_pd **identify_resp, u32 bus, u32 target)
{
 int rcode = -ENOMEM;
 int datasize;
 struct aac_srb_unit srbu;
 struct aac_srb *srbcmd;
 struct aac_ciss_identify_pd *identify_reply;

 datasize = sizeof(struct aac_ciss_identify_pd);
 identify_reply = kmalloc(datasize, GFP_KERNEL);
 if (!identify_reply)
  goto out;

 memset(&srbu, 0, sizeof(struct aac_srb_unit));

 srbcmd = &srbu.srb;
 srbcmd->flags = cpu_to_le32(SRB_DataIn);
 srbcmd->cdb[0] = 0x26;
 srbcmd->cdb[2] = (u8)((AAC_MAX_LUN + target) & 0x00FF);
 srbcmd->cdb[6] = CISS_IDENTIFY_PHYSICAL_DEVICE;

 rcode = aac_send_safw_bmic_cmd(dev, &srbu, identify_reply, datasize);
 if (unlikely(rcode < 0))
  goto mem_free_all;

 *identify_resp = identify_reply;

out:
 return rcode;
mem_free_all:
 kfree(identify_reply);
 goto out;
}
