
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef scalar_t__ HDC ;


 scalar_t__ BeginPaint (int ,int *) ;
 int EndPaint (int ,int *) ;
 int TRACKBAR_Refresh (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static LRESULT
TRACKBAR_Paint (TRACKBAR_INFO *infoPtr, HDC hdc)
{
    if (hdc) {
 TRACKBAR_Refresh(infoPtr, hdc);
    } else {
 PAINTSTRUCT ps;
     hdc = BeginPaint (infoPtr->hwndSelf, &ps);
     TRACKBAR_Refresh (infoPtr, hdc);
     EndPaint (infoPtr->hwndSelf, &ps);
    }

    return 0;
}
