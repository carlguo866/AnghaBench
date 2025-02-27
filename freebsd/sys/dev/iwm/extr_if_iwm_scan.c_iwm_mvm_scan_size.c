
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_scan_channels; } ;
struct TYPE_4__ {TYPE_1__ ucode_capa; } ;
struct iwm_softc {TYPE_2__ sc_fw; } ;
struct iwm_scan_req_umac_tail {int dummy; } ;
struct iwm_scan_req_lmac {int dummy; } ;
struct iwm_scan_probe_req {int dummy; } ;
struct iwm_scan_channel_cfg_umac {int dummy; } ;
struct iwm_scan_channel_cfg_lmac {int dummy; } ;


 int IWM_SCAN_REQ_UMAC_SIZE_V1 ;
 int IWM_SCAN_REQ_UMAC_SIZE_V7 ;
 int IWM_UCODE_TLV_API_ADAPTIVE_DWELL ;
 int IWM_UCODE_TLV_CAPA_UMAC_SCAN ;
 scalar_t__ iwm_fw_has_api (struct iwm_softc*,int ) ;
 scalar_t__ iwm_fw_has_capa (struct iwm_softc*,int ) ;

__attribute__((used)) static int
iwm_mvm_scan_size(struct iwm_softc *sc)
{
 int base_size;

 if (iwm_fw_has_capa(sc, IWM_UCODE_TLV_CAPA_UMAC_SCAN)) {
  if (iwm_fw_has_api(sc, IWM_UCODE_TLV_API_ADAPTIVE_DWELL))
   base_size = IWM_SCAN_REQ_UMAC_SIZE_V7;
  else
   base_size = IWM_SCAN_REQ_UMAC_SIZE_V1;

  return base_size +
      sizeof(struct iwm_scan_channel_cfg_umac) *
      sc->sc_fw.ucode_capa.n_scan_channels +
      sizeof(struct iwm_scan_req_umac_tail);
 } else {
  return sizeof(struct iwm_scan_req_lmac) +
      sizeof(struct iwm_scan_channel_cfg_lmac) *
      sc->sc_fw.ucode_capa.n_scan_channels +
      sizeof(struct iwm_scan_probe_req);
 }
}
