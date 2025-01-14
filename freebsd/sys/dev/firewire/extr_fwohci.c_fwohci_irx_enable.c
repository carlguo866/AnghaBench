
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fwohcidb_tr {int dbcnt; int bus_addr; struct fwohcidb* db; int dma_map; } ;
struct TYPE_4__ {int depend; int res; int cmd; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;
struct fwohcidb {TYPE_2__ db; } ;
struct TYPE_6__ {int dev; } ;
struct fwohci_softc {TYPE_3__ fc; struct fwohci_dbch* ir; } ;
struct fw_xferq {int flag; int bnpacket; int bnchunk; int stdma; int stfree; scalar_t__ queued; } ;
struct fwohci_dbch {int ndb; int ndesc; int flags; int am; int dmat; struct fw_xferq xferq; } ;
struct fw_bulkxfer {scalar_t__ start; scalar_t__ end; int * mbuf; } ;
struct firewire_comm {int dev; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOMEM ;
 int FWOHCI_DBCH_INIT ;
 int FWOHCI_DMA_CLEAR (int ,int) ;
 int FWOHCI_DMA_SET (int ,int) ;
 int FWOHCI_DMA_WRITE (int ,int ) ;
 int FWOHCI_INTMASK ;
 int FWXFERQ_HANDLER ;
 int FWXFERQ_RUNNING ;
 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 scalar_t__ IRX_CH ;
 int OHCI_BRANCH_ALWAYS ;
 int OHCI_CNTL_DMA_ACTIVE ;
 int OHCI_CNTL_DMA_RUN ;
 int OHCI_CNTL_ISOHDR ;
 int OHCI_INPUT_LAST ;
 int OHCI_INTERRUPT_ALWAYS ;
 int OHCI_INT_DMA_IR ;
 int OHCI_IRCMD (int) ;
 int OHCI_IRCTL (int) ;
 int OHCI_IRCTLCLR (int) ;
 int OHCI_IRMATCH (int) ;
 int OHCI_IR_MASK ;
 int OHCI_IR_MASKCLR ;
 int OHCI_IR_STATCLR ;
 int OHCI_UPDATE ;
 int OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 struct fw_bulkxfer* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_bulkxfer*,int ) ;
 struct fw_bulkxfer* STAILQ_LAST (int *,int ,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_dmamap_load_mbuf (int ,int ,int *,int ,struct fwohcidb_tr*,int ) ;
 int device_printf (int ,char*,...) ;
 int dump_db (struct fwohci_softc*,scalar_t__) ;
 scalar_t__ firewire_debug ;
 int fw_bulkxfer ;
 int fwdma_sync_multiseg_all (int ,int ) ;
 int fwohci_db_init (struct fwohci_softc*,struct fwohci_dbch*) ;
 int fwohci_execute_db2 ;
 int fwohci_rx_enable (struct fwohci_softc*,struct fwohci_dbch*) ;
 int link ;
 int printf (char*,int) ;
 int splfw () ;
 int splx (int) ;
 unsigned short* tagbit ;

__attribute__((used)) static int
fwohci_irx_enable(struct firewire_comm *fc, int dmach)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)fc;
 int err = 0, s, ldesc;
 unsigned short tag, ich;
 uint32_t stat;
 struct fwohci_dbch *dbch;
 struct fwohcidb_tr *db_tr;
 struct fw_bulkxfer *first, *prev, *chunk;
 struct fw_xferq *ir;

 dbch = &sc->ir[dmach];
 ir = &dbch->xferq;

 if ((ir->flag & FWXFERQ_RUNNING) == 0) {
  tag = (ir->flag >> 6) & 3;
  ich = ir->flag & 0x3f;
  OWRITE(sc, OHCI_IRMATCH(dmach), tagbit[tag] | ich);

  ir->queued = 0;
  dbch->ndb = ir->bnpacket * ir->bnchunk;
  dbch->ndesc = 2;
  fwohci_db_init(sc, dbch);
  if ((dbch->flags & FWOHCI_DBCH_INIT) == 0)
   return ENOMEM;
  err = fwohci_rx_enable(sc, dbch);
 }
 if (err)
  return err;

 first = STAILQ_FIRST(&ir->stfree);
 if (first == ((void*)0)) {
  device_printf(fc->dev, "IR DMA no free chunk\n");
  return 0;
 }

 ldesc = dbch->ndesc - 1;
 s = splfw();
 if ((ir->flag & FWXFERQ_HANDLER) == 0)
  FW_GLOCK(fc);
 prev = STAILQ_LAST(&ir->stdma, fw_bulkxfer, link);
 while ((chunk = STAILQ_FIRST(&ir->stfree)) != ((void*)0)) {
  struct fwohcidb *db;


  if (chunk->mbuf != ((void*)0)) {
   db_tr = (struct fwohcidb_tr *)(chunk->start);
   db_tr->dbcnt = 1;
   err = bus_dmamap_load_mbuf(dbch->dmat, db_tr->dma_map,
     chunk->mbuf, fwohci_execute_db2, db_tr,
                0);
    FWOHCI_DMA_SET(db_tr->db[1].db.desc.cmd,
    OHCI_UPDATE | OHCI_INPUT_LAST |
    OHCI_INTERRUPT_ALWAYS | OHCI_BRANCH_ALWAYS);
  }

  db = ((struct fwohcidb_tr *)(chunk->end))->db;
  FWOHCI_DMA_WRITE(db[ldesc].db.desc.res, 0);
  FWOHCI_DMA_CLEAR(db[ldesc].db.desc.depend, 0xf);
  if (prev != ((void*)0)) {
   db = ((struct fwohcidb_tr *)(prev->end))->db;
   FWOHCI_DMA_SET(db[ldesc].db.desc.depend, dbch->ndesc);
  }
  STAILQ_REMOVE_HEAD(&ir->stfree, link);
  STAILQ_INSERT_TAIL(&ir->stdma, chunk, link);
  prev = chunk;
 }
 if ((ir->flag & FWXFERQ_HANDLER) == 0)
  FW_GUNLOCK(fc);
 fwdma_sync_multiseg_all(dbch->am, BUS_DMASYNC_PREWRITE);
 fwdma_sync_multiseg_all(dbch->am, BUS_DMASYNC_PREREAD);
 splx(s);
 stat = OREAD(sc, OHCI_IRCTL(dmach));
 if (stat & OHCI_CNTL_DMA_ACTIVE)
  return 0;
 if (stat & OHCI_CNTL_DMA_RUN) {
  OWRITE(sc, OHCI_IRCTLCLR(dmach), OHCI_CNTL_DMA_RUN);
  device_printf(sc->fc.dev, "IR DMA overrun (0x%08x)\n", stat);
 }

 if (firewire_debug)
  printf("start IR DMA 0x%x\n", stat);
 OWRITE(sc, OHCI_IR_MASKCLR, 1 << dmach);
 OWRITE(sc, OHCI_IR_STATCLR, 1 << dmach);
 OWRITE(sc, OHCI_IR_MASK, 1 << dmach);
 OWRITE(sc, OHCI_IRCTLCLR(dmach), 0xf0000000);
 OWRITE(sc, OHCI_IRCTL(dmach), OHCI_CNTL_ISOHDR);
 OWRITE(sc, OHCI_IRCMD(dmach),
  ((struct fwohcidb_tr *)(first->start))->bus_addr
       | dbch->ndesc);
 OWRITE(sc, OHCI_IRCTL(dmach), OHCI_CNTL_DMA_RUN);
 OWRITE(sc, FWOHCI_INTMASK, OHCI_INT_DMA_IR);



 return err;
}
