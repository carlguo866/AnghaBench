
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int clrBtnText; int clr3dShadow; int clrBtnHighlight; } ;
struct TYPE_10__ {int uItemState; int hdc; } ;
struct TYPE_13__ {TYPE_1__ nmcd; } ;
struct TYPE_12__ {int top; int bottom; scalar_t__ left; } ;
struct TYPE_11__ {int dwStyle; } ;
typedef TYPE_2__ TOOLBAR_INFO ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ NMTBCUSTOMDRAW ;
typedef int HDC ;
typedef int DWORD ;
typedef int BOOL ;


 int ARROW_HEIGHT ;
 int BDR_RAISEDINNER ;
 int BDR_SUNKENOUTER ;
 int BF_MIDDLE ;
 int BF_RECT ;
 int BF_SOFT ;
 int CDIS_CHECKED ;
 int CDIS_DISABLED ;
 int CDIS_HOT ;
 int CDIS_INDETERMINATE ;
 int CDIS_SELECTED ;
 int DrawEdge (int ,TYPE_3__*,int ,int) ;
 int EDGE_RAISED ;
 int EDGE_SUNKEN ;
 int TBCDRF_NOOFFSET ;
 int TBSTYLE_FLAT ;
 int TOOLBAR_DrawArrow (int ,scalar_t__,int,int ) ;
 TYPE_5__ comctl32_color ;

__attribute__((used)) static void
TOOLBAR_DrawSepDDArrow(const TOOLBAR_INFO *infoPtr, const NMTBCUSTOMDRAW *tbcd, RECT *rcArrow, BOOL bDropDownPressed, DWORD dwItemCDFlag)
{
    HDC hdc = tbcd->nmcd.hdc;
    int offset = 0;
    BOOL pressed = bDropDownPressed ||
        (tbcd->nmcd.uItemState & (CDIS_SELECTED | CDIS_CHECKED));

    if (infoPtr->dwStyle & TBSTYLE_FLAT)
    {
        if (pressed)
            DrawEdge (hdc, rcArrow, BDR_SUNKENOUTER, BF_RECT);
        else if ( (tbcd->nmcd.uItemState & CDIS_HOT) &&
                 !(tbcd->nmcd.uItemState & CDIS_DISABLED) &&
                 !(tbcd->nmcd.uItemState & CDIS_INDETERMINATE))
            DrawEdge (hdc, rcArrow, BDR_RAISEDINNER, BF_RECT);
    }
    else
    {
        if (pressed)
            DrawEdge (hdc, rcArrow, EDGE_SUNKEN, BF_RECT | BF_MIDDLE);
        else
            DrawEdge (hdc, rcArrow, EDGE_RAISED,
              BF_SOFT | BF_RECT | BF_MIDDLE);
    }

    if (pressed)
        offset = (dwItemCDFlag & TBCDRF_NOOFFSET) ? 0 : 1;

    if (tbcd->nmcd.uItemState & (CDIS_DISABLED | CDIS_INDETERMINATE))
    {
        TOOLBAR_DrawArrow(hdc, rcArrow->left+1, rcArrow->top+1 + (rcArrow->bottom - rcArrow->top - ARROW_HEIGHT) / 2, comctl32_color.clrBtnHighlight);
        TOOLBAR_DrawArrow(hdc, rcArrow->left, rcArrow->top + (rcArrow->bottom - rcArrow->top - ARROW_HEIGHT) / 2, comctl32_color.clr3dShadow);
    }
    else
        TOOLBAR_DrawArrow(hdc, rcArrow->left + offset, rcArrow->top + offset + (rcArrow->bottom - rcArrow->top - ARROW_HEIGHT) / 2, comctl32_color.clrBtnText);
}
