
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ch_softc {int flags; int open_count; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;


 int CH_FLAG_INVALID ;
 int ENXIO ;
 int PCATCH ;
 int PRIBIO ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_hold (struct cam_periph*,int) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int cam_periph_unhold (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int chgetparams (struct cam_periph*) ;

__attribute__((used)) static int
chopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct cam_periph *periph;
 struct ch_softc *softc;
 int error;

 periph = (struct cam_periph *)dev->si_drv1;
 if (cam_periph_acquire(periph) != 0)
  return (ENXIO);

 softc = (struct ch_softc *)periph->softc;

 cam_periph_lock(periph);

 if (softc->flags & CH_FLAG_INVALID) {
  cam_periph_release_locked(periph);
  cam_periph_unlock(periph);
  return(ENXIO);
 }

 if ((error = cam_periph_hold(periph, PRIBIO | PCATCH)) != 0) {
  cam_periph_unlock(periph);
  cam_periph_release(periph);
  return (error);
 }




 if ((error = chgetparams(periph)) != 0) {
  cam_periph_unhold(periph);
  cam_periph_release_locked(periph);
  cam_periph_unlock(periph);
  return(error);
 }

 cam_periph_unhold(periph);

 softc->open_count++;

 cam_periph_unlock(periph);

 return(error);
}
