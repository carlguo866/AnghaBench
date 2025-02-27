
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wm8400 {int io_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8400_read (struct wm8400*,int ,int,int *) ;

u16 wm8400_reg_read(struct wm8400 *wm8400, u8 reg)
{
 u16 val;

 mutex_lock(&wm8400->io_lock);

 wm8400_read(wm8400, reg, 1, &val);

 mutex_unlock(&wm8400->io_lock);

 return val;
}
