
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int isac; } ;
struct TYPE_4__ {TYPE_1__ isurf; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int readb (int ) ;

__attribute__((used)) static void
ReadISACfifo(struct IsdnCardState *cs, u_char * data, int size)
{
 register int i;
 for (i = 0; i < size; i++)
  data[i] = readb(cs->hw.isurf.isac);
}
