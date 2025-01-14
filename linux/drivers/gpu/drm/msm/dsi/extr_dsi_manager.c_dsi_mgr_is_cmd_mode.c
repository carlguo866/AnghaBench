
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {int host; } ;


 unsigned long MIPI_DSI_MODE_VIDEO ;
 unsigned long msm_dsi_host_get_mode_flags (int ) ;

__attribute__((used)) static bool dsi_mgr_is_cmd_mode(struct msm_dsi *msm_dsi)
{
 unsigned long host_flags = msm_dsi_host_get_mode_flags(msm_dsi->host);
 return !(host_flags & MIPI_DSI_MODE_VIDEO);
}
