
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int vi_flags; } ;
struct TYPE_15__ {TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
struct TYPE_16__ {int xsize; int ysize; int scr; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_17__ {int * scr_map; TYPE_3__* cur_scp; } ;
typedef TYPE_4__ sc_softc_t ;


 int ATTR (int) ;
 int BG_BLACK ;
 int DAEMON_MAX_HEIGHT ;
 int DAEMON_MAX_WIDTH ;
 int EAGAIN ;
 int FG_LIGHTGREY ;
 int V_INFO_GRAPHICS ;
 int blanked ;
 int clear_daemon (TYPE_4__*,int,int,int,int,int,int,int) ;
 int clear_string (TYPE_4__*,int,int,int,int ,int) ;
 int draw_daemon (TYPE_4__*,int,int,int,int,int,int,int) ;
 int draw_string (TYPE_4__*,int,int,int,int ,int) ;
 int message ;
 int messagelen ;
 TYPE_4__* sc_find_softc (TYPE_2__*,int *) ;
 int sc_set_border (TYPE_3__*,int ) ;
 int sc_vtb_clear (int *,int ,int ) ;
 int vidd_set_hw_cursor (TYPE_2__*,int,int) ;

__attribute__((used)) static int
daemon_saver(video_adapter_t *adp, int blank)
{
 static int txpos = 10, typos = 10;
 static int txdir = -1, tydir = -1;
 static int dxpos = 0, dypos = 0;
 static int dxdir = 1, dydir = 1;
 static int moved_daemon = 0;
 static int xoff, yoff, toff;
 static int xlen, ylen, tlen;
 sc_softc_t *sc;
 scr_stat *scp;
 int min, max;

 sc = sc_find_softc(adp, ((void*)0));
 if (sc == ((void*)0))
  return EAGAIN;
 scp = sc->cur_scp;

 if (blank) {
  if (adp->va_info.vi_flags & V_INFO_GRAPHICS)
   return EAGAIN;
  if (blanked == 0) {

   sc_vtb_clear(&scp->scr, sc->scr_map[0x20],
         ATTR(FG_LIGHTGREY | BG_BLACK));
   vidd_set_hw_cursor(adp, -1, -1);
   sc_set_border(scp, 0);
   xlen = ylen = tlen = 0;
  }
  if (blanked++ < 2)
   return 0;
  blanked = 1;

   clear_daemon(sc, dxpos, dypos, dxdir, xoff, yoff, xlen, ylen);
  clear_string(sc, txpos, typos, toff, message, tlen);

  if (++moved_daemon) {






   if (scp->xsize <= DAEMON_MAX_WIDTH) {






    min = scp->xsize - DAEMON_MAX_WIDTH - 10;
    max = 10;
   } else {
    min = 0;
    max = scp->xsize - DAEMON_MAX_WIDTH;
   }
   if (dxpos <= min) {
    dxpos = min;
    dxdir = 1;
   } else if (dxpos >= max) {
    dxpos = max;
    dxdir = -1;
   }

   if (scp->ysize <= DAEMON_MAX_HEIGHT) {
    min = scp->ysize - DAEMON_MAX_HEIGHT - 10;
    max = 10;
   } else {
    min = 0;
    max = scp->ysize - DAEMON_MAX_HEIGHT;
   }
   if (dypos <= min) {
    dypos = min;
    dydir = 1;
   } else if (dypos >= max) {
    dypos = max;
    dydir = -1;
   }

   moved_daemon = -1;
   dxpos += dxdir; dypos += dydir;


   xoff = 0;
   xlen = DAEMON_MAX_WIDTH;
   if (dxpos + xlen <= 0)
    xlen = 0;
   else if (dxpos < 0)
    xoff = -dxpos;
   if (dxpos >= scp->xsize)
    xlen = 0;
   else if (dxpos + xlen > scp->xsize)
    xlen = scp->xsize - dxpos;
   yoff = 0;
   ylen = DAEMON_MAX_HEIGHT;
   if (dypos + ylen <= 0)
    ylen = 0;
   else if (dypos < 0)
    yoff = -dypos;
   if (dypos >= scp->ysize)
    ylen = 0;
   else if (dypos + ylen > scp->ysize)
    ylen = scp->ysize - dypos;
  }

  if (scp->xsize <= messagelen) {
   min = scp->xsize - messagelen - 10;
   max = 10;
  } else {
   min = 0;
   max = scp->xsize - messagelen;
  }
  if (txpos <= min) {
   txpos = min;
   txdir = 1;
  } else if (txpos >= max) {
   txpos = max;
   txdir = -1;
  }
  if (typos <= 0) {
   typos = 0;
   tydir = 1;
  } else if (typos >= scp->ysize - 1) {
   typos = scp->ysize - 1;
   tydir = -1;
  }
  txpos += txdir; typos += tydir;

  toff = 0;
  tlen = messagelen;
  if (txpos + tlen <= 0)
   tlen = 0;
  else if (txpos < 0)
   toff = -txpos;
  if (txpos >= scp->xsize)
   tlen = 0;
  else if (txpos + tlen > scp->xsize)
   tlen = scp->xsize - txpos;

   draw_daemon(sc, dxpos, dypos, dxdir, xoff, yoff, xlen, ylen);
  draw_string(sc, txpos, typos, toff, message, tlen);
 } else
  blanked = 0;

 return 0;
}
