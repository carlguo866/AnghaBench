
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {int input_dev; int dev; } ;
struct TYPE_2__ {int reads; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int MODR ;
 int RC_AGAIN ;
 int RC_PENDOWN ;
 int RC_PENUP ;
 int WM97XX_ADCSEL_MASK ;
 int WM97XX_ADCSEL_PRES ;
 int WM97XX_ADCSEL_X ;
 int WM97XX_ADCSEL_Y ;
 TYPE_1__* cinfo ;
 int dev_dbg (int ,char*,int,int,int) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int msleep (int) ;
 scalar_t__ pressure ;
 size_t sp_idx ;

__attribute__((used)) static int wm97xx_acc_pen_down(struct wm97xx *wm)
{
 u16 x, y, p = 0x100 | WM97XX_ADCSEL_PRES;
 int reads = 0;
 static u16 last, tries;






 msleep(1);

 if (tries > 5) {
  tries = 0;
  return RC_PENUP;
 }

 x = MODR;
 if (x == last) {
  tries++;
  return RC_AGAIN;
 }
 last = x;
 do {
  if (reads)
   x = MODR;
  y = MODR;
  if (pressure)
   p = MODR;

  dev_dbg(wm->dev, "Raw coordinates: x=%x, y=%x, p=%x\n",
   x, y, p);


  if ((x & WM97XX_ADCSEL_MASK) != WM97XX_ADCSEL_X ||
      (y & WM97XX_ADCSEL_MASK) != WM97XX_ADCSEL_Y ||
      (p & WM97XX_ADCSEL_MASK) != WM97XX_ADCSEL_PRES)
   goto up;


  tries = 0;
  input_report_abs(wm->input_dev, ABS_X, x & 0xfff);
  input_report_abs(wm->input_dev, ABS_Y, y & 0xfff);
  input_report_abs(wm->input_dev, ABS_PRESSURE, p & 0xfff);
  input_report_key(wm->input_dev, BTN_TOUCH, (p != 0));
  input_sync(wm->input_dev);
  reads++;
 } while (reads < cinfo[sp_idx].reads);
up:
 return RC_PENDOWN | RC_AGAIN;
}
