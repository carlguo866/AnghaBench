
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hDlg; } ;


 int IDD_DIALOG ;
 TYPE_1__* loc_dlg ;

void reset_localization(int dlg_id)
{
 loc_dlg[dlg_id-IDD_DIALOG].hDlg = ((void*)0);
}
