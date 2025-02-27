
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* f_inode; } ;
struct drm_crtc_crc {int lock; } ;
struct drm_crtc {TYPE_2__* funcs; struct drm_crtc_crc crc; } ;
struct TYPE_4__ {int (* set_crc_source ) (struct drm_crtc*,int *) ;} ;
struct TYPE_3__ {struct drm_crtc* i_private; } ;


 int crtc_crc_cleanup (struct drm_crtc_crc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct drm_crtc*,int *) ;

__attribute__((used)) static int crtc_crc_release(struct inode *inode, struct file *filep)
{
 struct drm_crtc *crtc = filep->f_inode->i_private;
 struct drm_crtc_crc *crc = &crtc->crc;

 crtc->funcs->set_crc_source(crtc, ((void*)0));

 spin_lock_irq(&crc->lock);
 crtc_crc_cleanup(crc);
 spin_unlock_irq(&crc->lock);

 return 0;
}
