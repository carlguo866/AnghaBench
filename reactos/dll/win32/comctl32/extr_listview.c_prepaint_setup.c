
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ clrHighlight; scalar_t__ clrHighlightText; scalar_t__ clr3dFace; scalar_t__ clrBtnText; scalar_t__ clrWindow; scalar_t__ clrWindowText; } ;
struct TYPE_9__ {int dwLvExStyle; int dwStyle; scalar_t__ bFocus; } ;
struct TYPE_7__ {int uItemState; } ;
struct TYPE_8__ {scalar_t__ clrTextBk; scalar_t__ clrText; TYPE_1__ nmcd; } ;
typedef TYPE_2__ NMLVCUSTOMDRAW ;
typedef TYPE_3__ LISTVIEW_INFO ;
typedef int HDC ;
typedef scalar_t__ COLORREF ;
typedef int BOOL ;


 int CDIS_SELECTED ;
 scalar_t__ CLR_DEFAULT ;
 scalar_t__ CLR_NONE ;
 int LVS_EX_FULLROWSELECT ;
 int LVS_SHOWSELALWAYS ;
 int OPAQUE ;
 int SetBkColor (int ,scalar_t__) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,scalar_t__) ;
 int TRANSPARENT ;
 TYPE_6__ comctl32_color ;

__attribute__((used)) static void prepaint_setup (const LISTVIEW_INFO *infoPtr, HDC hdc, NMLVCUSTOMDRAW *lpnmlvcd, BOOL SubItem)
{
    COLORREF backcolor, textcolor;


    if (!SubItem || (infoPtr->dwLvExStyle & LVS_EX_FULLROWSELECT))
    {
        if (lpnmlvcd->nmcd.uItemState & CDIS_SELECTED)
        {
            if (infoPtr->bFocus)
            {
                lpnmlvcd->clrTextBk = comctl32_color.clrHighlight;
                lpnmlvcd->clrText = comctl32_color.clrHighlightText;
            }
            else if (infoPtr->dwStyle & LVS_SHOWSELALWAYS)
            {
                lpnmlvcd->clrTextBk = comctl32_color.clr3dFace;
                lpnmlvcd->clrText = comctl32_color.clrBtnText;
            }
        }
    }

    backcolor = lpnmlvcd->clrTextBk;
    textcolor = lpnmlvcd->clrText;

    if (backcolor == CLR_DEFAULT)
        backcolor = comctl32_color.clrWindow;
    if (textcolor == CLR_DEFAULT)
        textcolor = comctl32_color.clrWindowText;


    if (backcolor != CLR_NONE)
    {
 SetBkMode(hdc, OPAQUE);
 SetBkColor(hdc, backcolor);
    }
    else
 SetBkMode(hdc, TRANSPARENT);
    SetTextColor(hdc, textcolor);
}
