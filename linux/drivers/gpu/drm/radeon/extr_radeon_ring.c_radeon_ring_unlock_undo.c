
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int dummy; } ;
struct radeon_device {int ring_lock; } ;


 int mutex_unlock (int *) ;
 int radeon_ring_undo (struct radeon_ring*) ;

void radeon_ring_unlock_undo(struct radeon_device *rdev, struct radeon_ring *ring)
{
 radeon_ring_undo(ring);
 mutex_unlock(&rdev->ring_lock);
}
