
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ctlr_info {int dummy; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; } ;


 scalar_t__ CMD_DATA_UNDERRUN ;
 int DMA_FROM_DEVICE ;
 int HPSA_INQUIRY ;
 int IO_OK ;
 int NO_TIMEOUT ;
 int TYPE_CMD ;
 struct CommandList* cmd_alloc (struct ctlr_info*) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 scalar_t__ fill_cmd (struct CommandList*,int ,struct ctlr_info*,unsigned char*,unsigned char,int ,unsigned char*,int ) ;
 int hpsa_scsi_do_simple_cmd_with_retry (struct ctlr_info*,struct CommandList*,int ,int ) ;
 int hpsa_scsi_interpret_error (struct ctlr_info*,struct CommandList*) ;

__attribute__((used)) static int hpsa_scsi_do_inquiry(struct ctlr_info *h, unsigned char *scsi3addr,
   u16 page, unsigned char *buf,
   unsigned char bufsize)
{
 int rc = IO_OK;
 struct CommandList *c;
 struct ErrorInfo *ei;

 c = cmd_alloc(h);

 if (fill_cmd(c, HPSA_INQUIRY, h, buf, bufsize,
   page, scsi3addr, TYPE_CMD)) {
  rc = -1;
  goto out;
 }
 rc = hpsa_scsi_do_simple_cmd_with_retry(h, c, DMA_FROM_DEVICE,
   NO_TIMEOUT);
 if (rc)
  goto out;
 ei = c->err_info;
 if (ei->CommandStatus != 0 && ei->CommandStatus != CMD_DATA_UNDERRUN) {
  hpsa_scsi_interpret_error(h, c);
  rc = -1;
 }
out:
 cmd_free(h, c);
 return rc;
}
