
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SONYPI_CAMERA_STATUS ;
 int SONYPI_CAMERA_STATUS_READY ;
 int sonypi_call2 (int,int ) ;

__attribute__((used)) static int sonypi_camera_ready(void)
{
 u8 v;

 v = sonypi_call2(0x8f, SONYPI_CAMERA_STATUS);
 return (v != 0xff && (v & SONYPI_CAMERA_STATUS_READY));
}
