
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int versatilefb_blank_display (int *,int ) ;

__attribute__((used)) static int
versatilefb_clear(video_adapter_t *adp)
{

 return (versatilefb_blank_display(adp, 0));
}
