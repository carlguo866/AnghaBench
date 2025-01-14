
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
typedef TYPE_5__ menucommon_s ;
struct TYPE_12__ {int selectedmodel; int modelpage; TYPE_4__* picbuttons; TYPE_2__* pics; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_3__ generic; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ generic; } ;


 int MAX_MODELSPERPAGE ;
 int PLAYERGRID_COLS ;
 int PLAYERGRID_ROWS ;
 int QMF_HIGHLIGHT ;
 int QMF_PULSEIFFOCUS ;
 int QM_ACTIVATED ;
 TYPE_6__ botSelectInfo ;

__attribute__((used)) static void UI_BotSelectMenu_BotEvent( void* ptr, int event ) {
 int i;

 if( event != QM_ACTIVATED ) {
  return;
 }

 for( i = 0; i < (PLAYERGRID_ROWS * PLAYERGRID_COLS); i++ ) {
   botSelectInfo.pics[i].generic.flags &= ~QMF_HIGHLIGHT;
   botSelectInfo.picbuttons[i].generic.flags |= QMF_PULSEIFFOCUS;
 }


 i = ((menucommon_s*)ptr)->id;
 botSelectInfo.pics[i].generic.flags |= QMF_HIGHLIGHT;
 botSelectInfo.picbuttons[i].generic.flags &= ~QMF_PULSEIFFOCUS;
 botSelectInfo.selectedmodel = botSelectInfo.modelpage * MAX_MODELSPERPAGE + i;
}
