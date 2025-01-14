
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_6__ {int dwStyle; int hwndSelf; scalar_t__ hUpdown; scalar_t__ hwndCheckbut; scalar_t__ dateValid; } ;
struct TYPE_5__ {int styleOld; int styleNew; } ;
typedef TYPE_1__ STYLESTRUCT ;
typedef int LRESULT ;
typedef int HINSTANCE ;
typedef TYPE_2__ DATETIME_INFO ;


 int BM_SETCHECK ;
 int BS_AUTOCHECKBOX ;
 scalar_t__ CreateUpDownControl (int,int,int,int,int,int ,int,int ,int ,int ,int ,int ) ;
 scalar_t__ CreateWindowExW (int ,int ,int ,int,int,int,int,int,int ,int ,int ,int ) ;
 int DTS_SHOWNONE ;
 int DTS_UPDOWN ;
 int DestroyWindow (scalar_t__) ;
 int GWLP_HINSTANCE ;
 scalar_t__ GWL_STYLE ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int SendMessageW (scalar_t__,int ,int,int ) ;
 int TRACE (char*,scalar_t__,int,int) ;
 int TRUE ;
 int UD_MAXVAL ;
 int UD_MINVAL ;
 int WC_BUTTONW ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_VISIBLE ;

__attribute__((used)) static LRESULT
DATETIME_StyleChanged(DATETIME_INFO *infoPtr, WPARAM wStyleType, const STYLESTRUCT *lpss)
{
    TRACE("(styletype=%lx, styleOld=0x%08x, styleNew=0x%08x)\n",
          wStyleType, lpss->styleOld, lpss->styleNew);

    if (wStyleType != GWL_STYLE) return 0;

    infoPtr->dwStyle = lpss->styleNew;

    if ( !(lpss->styleOld & DTS_SHOWNONE) && (lpss->styleNew & DTS_SHOWNONE) ) {
        infoPtr->hwndCheckbut = CreateWindowExW (0, WC_BUTTONW, 0, WS_CHILD | WS_VISIBLE | BS_AUTOCHECKBOX,
               2, 2, 13, 13, infoPtr->hwndSelf, 0,
      (HINSTANCE)GetWindowLongPtrW (infoPtr->hwndSelf, GWLP_HINSTANCE), 0);
        SendMessageW (infoPtr->hwndCheckbut, BM_SETCHECK, infoPtr->dateValid ? 1 : 0, 0);
    }
    if ( (lpss->styleOld & DTS_SHOWNONE) && !(lpss->styleNew & DTS_SHOWNONE) ) {
        DestroyWindow(infoPtr->hwndCheckbut);
        infoPtr->hwndCheckbut = 0;
    }
    if ( !(lpss->styleOld & DTS_UPDOWN) && (lpss->styleNew & DTS_UPDOWN) ) {
 infoPtr->hUpdown = CreateUpDownControl (WS_CHILD | WS_BORDER | WS_VISIBLE, 120, 1, 20, 20,
      infoPtr->hwndSelf, 1, 0, 0, UD_MAXVAL, UD_MINVAL, 0);
    }
    if ( (lpss->styleOld & DTS_UPDOWN) && !(lpss->styleNew & DTS_UPDOWN) ) {
 DestroyWindow(infoPtr->hUpdown);
 infoPtr->hUpdown = 0;
    }

    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
    return 0;
}
