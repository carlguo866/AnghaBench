
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dsi_traffic_mode { ____Placeholder_dsi_traffic_mode } dsi_traffic_mode ;


 int BURST_MODE ;
 int const MIPI_DSI_MODE_VIDEO_BURST ;
 int const MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int NON_BURST_SYNCH_EVENT ;
 int NON_BURST_SYNCH_PULSE ;

__attribute__((used)) static inline enum dsi_traffic_mode dsi_get_traffic_mode(const u32 mode_flags)
{
 if (mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
  return BURST_MODE;
 else if (mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
  return NON_BURST_SYNCH_PULSE;

 return NON_BURST_SYNCH_EVENT;
}
