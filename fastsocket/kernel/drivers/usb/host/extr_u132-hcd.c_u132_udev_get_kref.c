
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_udev {int kref; } ;
struct u132 {int dummy; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void u132_udev_get_kref(struct u132 *u132, struct u132_udev *udev)
{
 kref_get(&udev->kref);
}
