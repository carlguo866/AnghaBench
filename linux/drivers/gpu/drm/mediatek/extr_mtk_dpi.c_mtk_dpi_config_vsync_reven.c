
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi_sync_param {int dummy; } ;
struct mtk_dpi {int dummy; } ;


 int DPI_TGEN_VPORCH_REVEN ;
 int DPI_TGEN_VWIDTH_REVEN ;
 int mtk_dpi_config_vsync (struct mtk_dpi*,struct mtk_dpi_sync_param*,int ,int ) ;

__attribute__((used)) static void mtk_dpi_config_vsync_reven(struct mtk_dpi *dpi,
           struct mtk_dpi_sync_param *sync)
{
 mtk_dpi_config_vsync(dpi, sync, DPI_TGEN_VWIDTH_REVEN,
        DPI_TGEN_VPORCH_REVEN);
}
