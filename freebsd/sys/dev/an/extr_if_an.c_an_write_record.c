
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct TYPE_2__ {int an_dma_vaddr; int an_dma_paddr; } ;
struct an_softc {int an_ifp; TYPE_1__ an_rid_buffer; int mpi350; } ;
struct an_reply {int an_cmd; int an_status; int an_resp2; int an_resp1; int an_resp0; int an_parm0; } ;
struct an_ltv_gen {int an_len; int an_type; int an_val; } ;
struct an_command {int an_cmd; int an_status; int an_resp2; int an_resp1; int an_resp0; int an_parm0; } ;
struct an_card_rid_desc {int an_valid; int an_len; int an_phys; int an_rid; } ;
typedef int reply ;
typedef int cmd ;
typedef int an_rid_desc ;


 int AN_ACCESS_READ ;
 int AN_ACCESS_WRITE ;
 int AN_BAP1 ;
 int AN_CMD_ACCESS ;
 int AN_CMD_BUSY ;
 int AN_CMD_QUAL_MASK ;
 int AN_COMMAND (int ) ;
 int AN_DATA0 ;
 int AN_DATA1 ;
 scalar_t__ AN_HOST_DESC_OFFSET ;
 int AN_LOCK_ASSERT (struct an_softc*) ;
 int AN_TIMEOUT ;
 int CSR_MEM_AUX_WRITE_4 (struct an_softc*,scalar_t__,int ) ;
 int CSR_READ_2 (struct an_softc*,int ) ;
 int CSR_WRITE_1 (struct an_softc*,int ,int ) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int) ;
 int DELAY (int) ;
 int EIO ;
 scalar_t__ an_cmd (struct an_softc*,int,int ) ;
 int an_cmd_struct (struct an_softc*,struct an_reply*,struct an_reply*) ;
 scalar_t__ an_dump ;
 int an_dump_record (struct an_softc*,struct an_ltv_gen*,char*) ;
 scalar_t__ an_seek (struct an_softc*,int ,int ,int ) ;
 int bcopy (int *,int ,int) ;
 int bzero (struct an_reply*,int) ;
 int if_printf (int ,char*,int ,int,int ,int ,int ,int) ;
 int printf (char*) ;

__attribute__((used)) static int
an_write_record(struct an_softc *sc, struct an_ltv_gen *ltv)
{
 struct an_card_rid_desc an_rid_desc;
 struct an_command cmd;
 struct an_reply reply;
 u_int16_t *ptr;
 u_int8_t *ptr2;
 int i, len;

 AN_LOCK_ASSERT(sc);
 if (an_dump)
  an_dump_record(sc, ltv, "Write");

 if (!sc->mpi350){
  if (an_cmd(sc, AN_CMD_ACCESS|AN_ACCESS_READ, ltv->an_type))
   return(EIO);

  if (an_seek(sc, ltv->an_type, 0, AN_BAP1))
   return(EIO);




  len = ltv->an_len - 2;
  CSR_WRITE_2(sc, AN_DATA1, len);

  len -= 2;
  ptr = &ltv->an_val;
  for (i = len; i > 1; i -= 2)
   CSR_WRITE_2(sc, AN_DATA1, *ptr++);
  if (i) {
   ptr2 = (u_int8_t *)ptr;
   CSR_WRITE_1(sc, AN_DATA0, *ptr2);
  }

  if (an_cmd(sc, AN_CMD_ACCESS|AN_ACCESS_WRITE, ltv->an_type))
   return(EIO);
 } else {


  for (i = 0; i != AN_TIMEOUT; i++) {
   if (CSR_READ_2(sc, AN_COMMAND(sc->mpi350))
       & AN_CMD_BUSY) {
    DELAY(10);
   } else
    break;
  }
  if (i == AN_TIMEOUT) {
   printf("BUSY\n");
  }

  an_rid_desc.an_valid = 1;
  an_rid_desc.an_len = ltv->an_len - 2;
  an_rid_desc.an_rid = ltv->an_type;
  an_rid_desc.an_phys = sc->an_rid_buffer.an_dma_paddr;

  bcopy(&ltv->an_type, sc->an_rid_buffer.an_dma_vaddr,
        an_rid_desc.an_len);

  bzero(&cmd,sizeof(cmd));
  bzero(&reply,sizeof(reply));
  cmd.an_cmd = AN_CMD_ACCESS|AN_ACCESS_WRITE;
  cmd.an_parm0 = ltv->an_type;

  for (i = 0; i < sizeof(an_rid_desc) / 4; i++)
   CSR_MEM_AUX_WRITE_4(sc, AN_HOST_DESC_OFFSET + i * 4,
       ((u_int32_t *)(void *)&an_rid_desc)[i]);

  DELAY(100000);

  if ((i = an_cmd_struct(sc, &cmd, &reply))) {
   if_printf(sc->an_ifp,
       "failed to write RID 1 %x %x %x %x %x, %d\n",
       ltv->an_type,
       reply.an_status,
       reply.an_resp0,
       reply.an_resp1,
       reply.an_resp2,
       i);
   return(EIO);
  }


  if (reply.an_status & AN_CMD_QUAL_MASK) {
   if_printf(sc->an_ifp,
       "failed to write RID 2 %x %x %x %x %x, %d\n",
       ltv->an_type,
       reply.an_status,
       reply.an_resp0,
       reply.an_resp1,
       reply.an_resp2,
       i);
   return(EIO);
  }
  DELAY(100000);
 }

 return(0);
}
