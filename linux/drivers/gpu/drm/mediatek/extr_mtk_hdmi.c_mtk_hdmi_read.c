
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_hdmi {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 mtk_hdmi_read(struct mtk_hdmi *hdmi, u32 offset)
{
 return readl(hdmi->regs + offset);
}
