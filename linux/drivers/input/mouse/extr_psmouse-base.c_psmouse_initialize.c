
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int (* set_scale ) (struct psmouse*,int ) ;int resolution; int (* set_resolution ) (struct psmouse*,int ) ;int rate; int (* set_rate ) (struct psmouse*,int ) ;} ;


 scalar_t__ PSMOUSE_PS2 ;
 int PSMOUSE_SCALE11 ;
 scalar_t__ psmouse_max_proto ;
 int stub1 (struct psmouse*,int ) ;
 int stub2 (struct psmouse*,int ) ;
 int stub3 (struct psmouse*,int ) ;

__attribute__((used)) static void psmouse_initialize(struct psmouse *psmouse)
{



 if (psmouse_max_proto != PSMOUSE_PS2) {
  psmouse->set_rate(psmouse, psmouse->rate);
  psmouse->set_resolution(psmouse, psmouse->resolution);
  psmouse->set_scale(psmouse, PSMOUSE_SCALE11);
 }
}
