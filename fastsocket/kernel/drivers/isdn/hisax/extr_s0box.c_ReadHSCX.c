
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int * hscx; int cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ teles3; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int readreg (int ,int ,int ) ;

__attribute__((used)) static u_char
ReadHSCX(struct IsdnCardState *cs, int hscx, u_char offset)
{
 return (readreg(cs->hw.teles3.cfg_reg, cs->hw.teles3.hscx[hscx], offset));
}
