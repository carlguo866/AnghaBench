
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int uaudio_detach_sub (int ) ;

__attribute__((used)) static int
ua_detach(device_t dev)
{
 return (uaudio_detach_sub(dev));
}
