
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int isac; int ale; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int writefifo (int ,int ,int,int *,int) ;

__attribute__((used)) static void
WriteISACfifo_IPAC(struct IsdnCardState *cs, u_char * data, int size)
{
 writefifo(cs->hw.elsa.ale, cs->hw.elsa.isac, 0x80, data, size);
}
