
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct TYPE_5__ {int qe; } ;
struct TYPE_4__ {int qe; } ;
struct bfa_meminfo_s {TYPE_2__ kva_info; TYPE_1__ dma_info; } ;
struct bfa_mem_dma_s {int dummy; } ;
struct TYPE_6__ {int min_cfg; } ;
struct bfa_iocfc_cfg_s {TYPE_3__ drvcfg; } ;


 struct bfa_mem_dma_s* BFA_MEM_ABLK_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_CEE_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_DIAG_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_FLASH_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_FRU_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_PHY_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_PORT_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_SFP_DMA (struct bfa_s*) ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int bfa_ablk_meminfo () ;
 int bfa_cee_meminfo () ;
 int bfa_dconf_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_diag_meminfo () ;
 int bfa_fcp_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_fcport_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_fcxp_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_flash_meminfo (int ) ;
 int bfa_fru_meminfo (int ) ;
 int bfa_iocfc_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_lps_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_mem_dma_setup (struct bfa_meminfo_s*,struct bfa_mem_dma_s*,int ) ;
 int bfa_phy_meminfo (int ) ;
 int bfa_port_meminfo () ;
 int bfa_rport_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_sfp_meminfo () ;
 int bfa_sgpg_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int bfa_uf_meminfo (struct bfa_iocfc_cfg_s*,struct bfa_meminfo_s*,struct bfa_s*) ;
 int memset (void*,int ,int) ;

void
bfa_cfg_get_meminfo(struct bfa_iocfc_cfg_s *cfg, struct bfa_meminfo_s *meminfo,
  struct bfa_s *bfa)
{
 struct bfa_mem_dma_s *port_dma = BFA_MEM_PORT_DMA(bfa);
 struct bfa_mem_dma_s *ablk_dma = BFA_MEM_ABLK_DMA(bfa);
 struct bfa_mem_dma_s *cee_dma = BFA_MEM_CEE_DMA(bfa);
 struct bfa_mem_dma_s *sfp_dma = BFA_MEM_SFP_DMA(bfa);
 struct bfa_mem_dma_s *flash_dma = BFA_MEM_FLASH_DMA(bfa);
 struct bfa_mem_dma_s *diag_dma = BFA_MEM_DIAG_DMA(bfa);
 struct bfa_mem_dma_s *phy_dma = BFA_MEM_PHY_DMA(bfa);
 struct bfa_mem_dma_s *fru_dma = BFA_MEM_FRU_DMA(bfa);

 WARN_ON((cfg == ((void*)0)) || (meminfo == ((void*)0)));

 memset((void *)meminfo, 0, sizeof(struct bfa_meminfo_s));


 INIT_LIST_HEAD(&meminfo->dma_info.qe);
 INIT_LIST_HEAD(&meminfo->kva_info.qe);

 bfa_iocfc_meminfo(cfg, meminfo, bfa);
 bfa_sgpg_meminfo(cfg, meminfo, bfa);
 bfa_fcport_meminfo(cfg, meminfo, bfa);
 bfa_fcxp_meminfo(cfg, meminfo, bfa);
 bfa_lps_meminfo(cfg, meminfo, bfa);
 bfa_uf_meminfo(cfg, meminfo, bfa);
 bfa_rport_meminfo(cfg, meminfo, bfa);
 bfa_fcp_meminfo(cfg, meminfo, bfa);
 bfa_dconf_meminfo(cfg, meminfo, bfa);


 bfa_mem_dma_setup(meminfo, port_dma, bfa_port_meminfo());
 bfa_mem_dma_setup(meminfo, ablk_dma, bfa_ablk_meminfo());
 bfa_mem_dma_setup(meminfo, cee_dma, bfa_cee_meminfo());
 bfa_mem_dma_setup(meminfo, sfp_dma, bfa_sfp_meminfo());
 bfa_mem_dma_setup(meminfo, flash_dma,
     bfa_flash_meminfo(cfg->drvcfg.min_cfg));
 bfa_mem_dma_setup(meminfo, diag_dma, bfa_diag_meminfo());
 bfa_mem_dma_setup(meminfo, phy_dma,
     bfa_phy_meminfo(cfg->drvcfg.min_cfg));
 bfa_mem_dma_setup(meminfo, fru_dma,
     bfa_fru_meminfo(cfg->drvcfg.min_cfg));
}
