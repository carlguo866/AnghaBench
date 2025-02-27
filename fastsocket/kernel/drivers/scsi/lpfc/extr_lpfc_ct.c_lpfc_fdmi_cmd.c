
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_23__ ;
typedef struct TYPE_37__ TYPE_22__ ;
typedef struct TYPE_36__ TYPE_21__ ;
typedef struct TYPE_35__ TYPE_20__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_19__ ;
typedef struct TYPE_32__ TYPE_18__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_16__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_29__ {int bdeSize; scalar_t__ bdeFlags; } ;
struct TYPE_30__ {void* w; TYPE_15__ f; } ;
struct ulp_bde64 {TYPE_16__ tus; void* addrLow; void* addrHigh; } ;
struct TYPE_43__ {int bbRcvSizeLsb; int bbRcvSizeMsb; } ;
struct serv_parm {TYPE_6__ cmn; } ;
struct TYPE_28__ {scalar_t__ portName; scalar_t__ nodeName; } ;
struct lpfc_vport {int cfg_fdmi_on; TYPE_14__ fc_sparam; int port_state; int fc_flag; struct lpfc_hba* phba; } ;
struct TYPE_27__ {int PortID; } ;
struct TYPE_25__ {int Size; void* CmdRsp; } ;
struct TYPE_26__ {TYPE_11__ bits; } ;
struct TYPE_34__ {scalar_t__ InId; int Revision; } ;
struct TYPE_39__ {TYPE_1__ bits; } ;
struct lpfc_sli_ct_request {TYPE_13__ un; TYPE_12__ CommandResponse; int FsSubType; int FsType; TYPE_2__ RevisionId; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_42__ {int biuRev; } ;
struct TYPE_31__ {TYPE_5__ rev; } ;
struct lpfc_hba {char* SerialNumber; char* ModelName; char* ModelDesc; char* OptionROMVersion; int lmt; int fc_linkspeed; TYPE_17__ vpd; } ;
struct lpfc_dmabuf {int phys; void* virt; int list; } ;
typedef TYPE_17__ lpfc_vpd_t ;
struct TYPE_45__ {void* AttrLen; void* AttrType; } ;
struct TYPE_46__ {TYPE_8__ bits; } ;
struct TYPE_44__ {char* Manufacturer; char* SerialNumber; char* Model; char* ModelDescription; char* HardwareVersion; char* DriverVersion; char* OptionROMVersion; char* FirmwareVersion; char* OsNameVersion; int MaxCTPayloadLen; int* SupportFC4Types; int MaxFrameSize; char* HostName; scalar_t__ OsDeviceName; int PortSpeed; int SupportSpeed; scalar_t__ NodeName; } ;
struct TYPE_41__ {scalar_t__ pe; void* EntryCnt; } ;
struct TYPE_40__ {scalar_t__ PortName; } ;
struct TYPE_38__ {char* sysname; char* release; char* version; char* nodename; } ;
struct TYPE_37__ {int EntryCnt; } ;
struct TYPE_36__ {TYPE_9__ ad; TYPE_7__ un; } ;
struct TYPE_35__ {int PortName; } ;
struct TYPE_33__ {TYPE_4__ rpl; TYPE_3__ hi; } ;
struct TYPE_24__ {int EntryCnt; } ;
struct TYPE_32__ {TYPE_10__ ab; int PortName; } ;
typedef TYPE_18__ REG_PORT_ATTRIBUTE ;
typedef TYPE_19__ REG_HBA ;
typedef TYPE_20__ PORT_ENTRY ;
typedef TYPE_21__ ATTRIBUTE_ENTRY ;
typedef TYPE_22__ ATTRIBUTE_BLOCK ;


 int const DRIVER_VERSION ;
 int FC_MAX_NS_RSP ;
 int const FIRMWARE_VERSION ;
 int FOURBYTES ;
 int GFP_KERNEL ;
 int GID_REQUEST_SZ ;
 int const HARDWARE_VERSION ;
 int HBA_PORTSPEED_10GBIT ;
 int HBA_PORTSPEED_16GBIT ;
 int HBA_PORTSPEED_1GBIT ;
 int HBA_PORTSPEED_2GBIT ;
 int HBA_PORTSPEED_4GBIT ;
 int HBA_PORTSPEED_8GBIT ;
 int HBA_PORTSPEED_UNKNOWN ;
 int const HOST_NAME ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_INFO ;
 int LMT_10Gb ;
 int LMT_16Gb ;
 int LMT_1Gb ;
 int LMT_2Gb ;
 int LMT_4Gb ;
 int LMT_8Gb ;
 int LOG_DISCOVERY ;
 char* LPFC_DRIVER_NAME ;






 int const MANUFACTURER ;
 int const MAX_CT_PAYLOAD_LEN ;
 int const MAX_FRAME_SIZE ;
 int const MODEL ;
 int const MODEL_DESCRIPTION ;
 int const NODE_NAME ;
 int const OPTION_ROM_VERSION ;
 int const OS_DEVICE_NAME ;
 int const OS_NAME_VERSION ;
 int const PORT_SPEED ;
 int const SERIAL_NUMBER ;
 int SLI_CT_FDMI_Subtypes ;
 int SLI_CT_MANAGEMENT_SERVICE ;
 int SLI_CT_REVISION ;




 int const SUPPORTED_FC4_TYPES ;
 int const SUPPORTED_SPEED ;
 void* be16_to_cpu (int const) ;
 void* be32_to_cpu (int) ;
 TYPE_23__* init_utsname () ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 void* le32_to_cpu (void*) ;
 void lpfc_cmpl_ct_cmd_fdmi (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 int lpfc_ct_cmd (struct lpfc_vport*,struct lpfc_dmabuf*,struct lpfc_dmabuf*,struct lpfc_nodelist*,void (*) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*),int ,int ) ;
 int lpfc_decode_firmware_rev (struct lpfc_hba*,char*,int) ;
 void* lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbuf_free (struct lpfc_hba*,void*,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,...) ;
 char* lpfc_release_version ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (struct lpfc_sli_ct_request*,int ,int) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;
 int sprintf (char*,char*,char*,...) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int
lpfc_fdmi_cmd(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp, int cmdcode)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_dmabuf *mp, *bmp;
 struct lpfc_sli_ct_request *CtReq;
 struct ulp_bde64 *bpl;
 uint32_t size;
 REG_HBA *rh;
 PORT_ENTRY *pe;
 REG_PORT_ATTRIBUTE *pab;
 ATTRIBUTE_BLOCK *ab;
 ATTRIBUTE_ENTRY *ae;
 void (*cmpl) (struct lpfc_hba *, struct lpfc_iocbq *,
        struct lpfc_iocbq *);




 mp = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
 if (!mp)
  goto fdmi_cmd_exit;

 mp->virt = lpfc_mbuf_alloc(phba, 0, &(mp->phys));
 if (!mp->virt)
  goto fdmi_cmd_free_mp;


 bmp = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
 if (!bmp)
  goto fdmi_cmd_free_mpvirt;

 bmp->virt = lpfc_mbuf_alloc(phba, 0, &(bmp->phys));
 if (!bmp->virt)
  goto fdmi_cmd_free_bmp;

 INIT_LIST_HEAD(&mp->list);
 INIT_LIST_HEAD(&bmp->list);


 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0218 FDMI Request Data: x%x x%x x%x\n",
    vport->fc_flag, vport->port_state, cmdcode);
 CtReq = (struct lpfc_sli_ct_request *) mp->virt;

 memset(CtReq, 0, sizeof(struct lpfc_sli_ct_request));
 CtReq->RevisionId.bits.Revision = SLI_CT_REVISION;
 CtReq->RevisionId.bits.InId = 0;

 CtReq->FsType = SLI_CT_MANAGEMENT_SERVICE;
 CtReq->FsSubType = SLI_CT_FDMI_Subtypes;
 size = 0;

 switch (cmdcode) {
 case 129:
  {
   lpfc_vpd_t *vp = &phba->vpd;
   uint32_t i, j, incr;
   int len;

   CtReq->CommandResponse.bits.CmdRsp =
       be16_to_cpu(129);
   CtReq->CommandResponse.bits.Size = 0;
   rh = (REG_HBA *) & CtReq->un.PortID;
   memcpy(&rh->hi.PortName, &vport->fc_sparam.portName,
          sizeof (struct lpfc_name));

   rh->rpl.EntryCnt = be32_to_cpu(1);
   memcpy(&rh->rpl.pe, &vport->fc_sparam.portName,
          sizeof (struct lpfc_name));


   size = 2 * sizeof (struct lpfc_name) + FOURBYTES;
   ab = (ATTRIBUTE_BLOCK *) ((uint8_t *) rh + size);
   ab->EntryCnt = 0;




   size += FOURBYTES;
   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(NODE_NAME);
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES
      + sizeof (struct lpfc_name));
   memcpy(&ae->un.NodeName, &vport->fc_sparam.nodeName,
          sizeof (struct lpfc_name));
   ab->EntryCnt++;
   size += FOURBYTES + sizeof (struct lpfc_name);


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(MANUFACTURER);
   strcpy(ae->un.Manufacturer, "Emulex Corporation");
   len = strlen(ae->un.Manufacturer);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(SERIAL_NUMBER);
   strcpy(ae->un.SerialNumber, phba->SerialNumber);
   len = strlen(ae->un.SerialNumber);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(MODEL);
   strcpy(ae->un.Model, phba->ModelName);
   len = strlen(ae->un.Model);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(MODEL_DESCRIPTION);
   strcpy(ae->un.ModelDescription, phba->ModelDesc);
   len = strlen(ae->un.ModelDescription);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(HARDWARE_VERSION);
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + 8);

   incr = vp->rev.biuRev;
   for (i = 0; i < 8; i++) {
    j = (incr & 0xf);
    if (j <= 9)
     ae->un.HardwareVersion[7 - i] =
         (char)((uint8_t) 0x30 +
         (uint8_t) j);
    else
     ae->un.HardwareVersion[7 - i] =
         (char)((uint8_t) 0x61 +
         (uint8_t) (j - 10));
    incr = (incr >> 4);
   }
   ab->EntryCnt++;
   size += FOURBYTES + 8;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(DRIVER_VERSION);
   strcpy(ae->un.DriverVersion, lpfc_release_version);
   len = strlen(ae->un.DriverVersion);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(OPTION_ROM_VERSION);
   strcpy(ae->un.OptionROMVersion, phba->OptionROMVersion);
   len = strlen(ae->un.OptionROMVersion);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(FIRMWARE_VERSION);
   lpfc_decode_firmware_rev(phba, ae->un.FirmwareVersion,
    1);
   len = strlen(ae->un.FirmwareVersion);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(OS_NAME_VERSION);
   sprintf(ae->un.OsNameVersion, "%s %s %s",
    init_utsname()->sysname,
    init_utsname()->release,
    init_utsname()->version);
   len = strlen(ae->un.OsNameVersion);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   ab->EntryCnt++;
   size += FOURBYTES + len;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) rh + size);
   ae->ad.bits.AttrType = be16_to_cpu(MAX_CT_PAYLOAD_LEN);
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + 4);
   ae->un.MaxCTPayloadLen = (65 * 4096);
   ab->EntryCnt++;
   size += FOURBYTES + 4;

   ab->EntryCnt = be32_to_cpu(ab->EntryCnt);

   size = GID_REQUEST_SZ - 4 + size;
  }
  break;

 case 128:
  {
   lpfc_vpd_t *vp;
   struct serv_parm *hsp;
   int len;

   vp = &phba->vpd;

   CtReq->CommandResponse.bits.CmdRsp =
       be16_to_cpu(128);
   CtReq->CommandResponse.bits.Size = 0;
   pab = (REG_PORT_ATTRIBUTE *) & CtReq->un.PortID;
   size = sizeof (struct lpfc_name) + FOURBYTES;
   memcpy((uint8_t *) & pab->PortName,
          (uint8_t *) & vport->fc_sparam.portName,
          sizeof (struct lpfc_name));
   pab->ab.EntryCnt = 0;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) pab + size);
   ae->ad.bits.AttrType = be16_to_cpu(SUPPORTED_FC4_TYPES);
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + 32);
   ae->un.SupportFC4Types[2] = 1;
   ae->un.SupportFC4Types[7] = 1;
   pab->ab.EntryCnt++;
   size += FOURBYTES + 32;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) pab + size);
   ae->ad.bits.AttrType = be16_to_cpu(SUPPORTED_SPEED);
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + 4);

   ae->un.SupportSpeed = 0;
   if (phba->lmt & LMT_16Gb)
    ae->un.SupportSpeed |= HBA_PORTSPEED_16GBIT;
   if (phba->lmt & LMT_10Gb)
    ae->un.SupportSpeed |= HBA_PORTSPEED_10GBIT;
   if (phba->lmt & LMT_8Gb)
    ae->un.SupportSpeed |= HBA_PORTSPEED_8GBIT;
   if (phba->lmt & LMT_4Gb)
    ae->un.SupportSpeed |= HBA_PORTSPEED_4GBIT;
   if (phba->lmt & LMT_2Gb)
    ae->un.SupportSpeed |= HBA_PORTSPEED_2GBIT;
   if (phba->lmt & LMT_1Gb)
    ae->un.SupportSpeed |= HBA_PORTSPEED_1GBIT;

   pab->ab.EntryCnt++;
   size += FOURBYTES + 4;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) pab + size);
   ae->ad.bits.AttrType = be16_to_cpu(PORT_SPEED);
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + 4);
   switch(phba->fc_linkspeed) {
   case 135:
    ae->un.PortSpeed = HBA_PORTSPEED_1GBIT;
    break;
   case 134:
    ae->un.PortSpeed = HBA_PORTSPEED_2GBIT;
    break;
   case 133:
    ae->un.PortSpeed = HBA_PORTSPEED_4GBIT;
    break;
   case 132:
    ae->un.PortSpeed = HBA_PORTSPEED_8GBIT;
    break;
   case 137:
    ae->un.PortSpeed = HBA_PORTSPEED_10GBIT;
    break;
   case 136:
    ae->un.PortSpeed = HBA_PORTSPEED_16GBIT;
    break;
   default:
    ae->un.PortSpeed = HBA_PORTSPEED_UNKNOWN;
    break;
   }
   pab->ab.EntryCnt++;
   size += FOURBYTES + 4;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) pab + size);
   ae->ad.bits.AttrType = be16_to_cpu(MAX_FRAME_SIZE);
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + 4);
   hsp = (struct serv_parm *) & vport->fc_sparam;
   ae->un.MaxFrameSize =
       (((uint32_t) hsp->cmn.
         bbRcvSizeMsb) << 8) | (uint32_t) hsp->cmn.
       bbRcvSizeLsb;
   pab->ab.EntryCnt++;
   size += FOURBYTES + 4;


   ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) pab + size);
   ae->ad.bits.AttrType = be16_to_cpu(OS_DEVICE_NAME);
   strcpy((char *)ae->un.OsDeviceName, LPFC_DRIVER_NAME);
   len = strlen((char *)ae->un.OsDeviceName);
   len += (len & 3) ? (4 - (len & 3)) : 4;
   ae->ad.bits.AttrLen = be16_to_cpu(FOURBYTES + len);
   pab->ab.EntryCnt++;
   size += FOURBYTES + len;

   if (vport->cfg_fdmi_on == 2) {

    ae = (ATTRIBUTE_ENTRY *) ((uint8_t *) pab +
         size);
    ae->ad.bits.AttrType = be16_to_cpu(HOST_NAME);
    sprintf(ae->un.HostName, "%s",
     init_utsname()->nodename);
    len = strlen(ae->un.HostName);
    len += (len & 3) ? (4 - (len & 3)) : 4;
    ae->ad.bits.AttrLen =
        be16_to_cpu(FOURBYTES + len);
    pab->ab.EntryCnt++;
    size += FOURBYTES + len;
   }

   pab->ab.EntryCnt = be32_to_cpu(pab->ab.EntryCnt);

   size = GID_REQUEST_SZ - 4 + size;
  }
  break;

 case 131:
  CtReq->CommandResponse.bits.CmdRsp = be16_to_cpu(131);
  CtReq->CommandResponse.bits.Size = 0;
  pe = (PORT_ENTRY *) & CtReq->un.PortID;
  memcpy((uint8_t *) & pe->PortName,
         (uint8_t *) & vport->fc_sparam.portName,
         sizeof (struct lpfc_name));
  size = GID_REQUEST_SZ - 4 + sizeof (struct lpfc_name);
  break;

 case 130:
  CtReq->CommandResponse.bits.CmdRsp = be16_to_cpu(130);
  CtReq->CommandResponse.bits.Size = 0;
  pe = (PORT_ENTRY *) & CtReq->un.PortID;
  memcpy((uint8_t *) & pe->PortName,
         (uint8_t *) & vport->fc_sparam.portName,
         sizeof (struct lpfc_name));
  size = GID_REQUEST_SZ - 4 + sizeof (struct lpfc_name);
  break;
 }

 bpl = (struct ulp_bde64 *) bmp->virt;
 bpl->addrHigh = le32_to_cpu(putPaddrHigh(mp->phys) );
 bpl->addrLow = le32_to_cpu(putPaddrLow(mp->phys) );
 bpl->tus.f.bdeFlags = 0;
 bpl->tus.f.bdeSize = size;
 bpl->tus.w = le32_to_cpu(bpl->tus.w);

 cmpl = lpfc_cmpl_ct_cmd_fdmi;




 if (!lpfc_ct_cmd(vport, mp, bmp, ndlp, cmpl, FC_MAX_NS_RSP, 0))
  return 0;




 lpfc_nlp_put(ndlp);

 lpfc_mbuf_free(phba, bmp->virt, bmp->phys);
fdmi_cmd_free_bmp:
 kfree(bmp);
fdmi_cmd_free_mpvirt:
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
fdmi_cmd_free_mp:
 kfree(mp);
fdmi_cmd_exit:

 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0244 Issue FDMI request failed Data: x%x\n",
    cmdcode);
 return 1;
}
