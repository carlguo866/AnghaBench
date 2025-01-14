
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ SCROLL_TrackingPos; int SCROLL_MovingThumb; } ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_8__ {scalar_t__ xyThumbBottom; scalar_t__ xyThumbTop; scalar_t__ dxyLineButton; TYPE_1__ rcScrollBar; } ;
typedef TYPE_2__ SCROLLBARINFO ;
typedef TYPE_3__* PWND_DATA ;
typedef int PDRAW_CONTEXT ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int SCROLL_DrawInterior (int ,TYPE_2__*,scalar_t__,int ,int ,int ) ;
 int SCROLL_THUMB ;

__attribute__((used)) static void SCROLL_DrawMovingThumb(PWND_DATA pwndData, PDRAW_CONTEXT pcontext, SCROLLBARINFO* psbi, BOOL vertical)
{
  INT pos = pwndData->SCROLL_TrackingPos;
  INT max_size;

  if( vertical )
      max_size = psbi->rcScrollBar.bottom - psbi->rcScrollBar.top;
  else
      max_size = psbi->rcScrollBar.right - psbi->rcScrollBar.left;

  max_size -= psbi->xyThumbBottom - psbi->xyThumbTop + psbi->dxyLineButton;

  if( pos < (psbi->dxyLineButton) )
    pos = (psbi->dxyLineButton);
  else if( pos > max_size )
    pos = max_size;

  SCROLL_DrawInterior(pcontext, psbi, pos, vertical, SCROLL_THUMB, 0);

  pwndData->SCROLL_MovingThumb = !pwndData->SCROLL_MovingThumb;
}
