
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int vd_keyboard; } ;
typedef int keyboard_t ;


 int EINVAL ;
 int Giant ;


 int NOKEY ;
 int kbd_release (int *,void*) ;
 int kbdd_read_char (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vt_processkey (int *,struct vt_device*,int) ;

__attribute__((used)) static int
vt_kbdevent(keyboard_t *kbd, int event, void *arg)
{
 struct vt_device *vd = arg;
 int c;

 switch (event) {
 case 129:
  break;
 case 128:
  mtx_lock(&Giant);
  vd->vd_keyboard = -1;
  kbd_release(kbd, (void *)vd);
  mtx_unlock(&Giant);
  return (0);
 default:
  return (EINVAL);
 }

 while ((c = kbdd_read_char(kbd, 0)) != NOKEY)
  vt_processkey(kbd, vd, c);

 return (0);
}
