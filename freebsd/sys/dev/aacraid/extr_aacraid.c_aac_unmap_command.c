
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_buffer_dmat; } ;
struct aac_command {int cm_flags; scalar_t__ cm_datalen; scalar_t__ cm_passthr_dmat; int cm_datamap; struct aac_softc* cm_sc; } ;


 int AAC_CMD_DATAIN ;
 int AAC_CMD_DATAOUT ;
 int AAC_CMD_MAPPED ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_unmap_command(struct aac_command *cm)
{
 struct aac_softc *sc;

 sc = cm->cm_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 if (!(cm->cm_flags & AAC_CMD_MAPPED))
  return;

 if (cm->cm_datalen != 0 && cm->cm_passthr_dmat == 0) {
  if (cm->cm_flags & AAC_CMD_DATAIN)
   bus_dmamap_sync(sc->aac_buffer_dmat, cm->cm_datamap,
     BUS_DMASYNC_POSTREAD);
  if (cm->cm_flags & AAC_CMD_DATAOUT)
   bus_dmamap_sync(sc->aac_buffer_dmat, cm->cm_datamap,
     BUS_DMASYNC_POSTWRITE);

  bus_dmamap_unload(sc->aac_buffer_dmat, cm->cm_datamap);
 }
 cm->cm_flags &= ~AAC_CMD_MAPPED;
}
