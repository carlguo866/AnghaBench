
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_transform_t ;
typedef scalar_t__ video_orientation_t ;


 int transform_FromBasicOps (int,int) ;
 int transform_GetBasicOps (int ,unsigned int*,int*) ;
 int transform_Inverse (int ) ;

video_transform_t video_format_GetTransform( video_orientation_t src,
                                             video_orientation_t dst )
{
    unsigned angle1, angle2;
    bool hflip1, hflip2;

    transform_GetBasicOps( (video_transform_t)src, &angle1, &hflip1 );
    transform_GetBasicOps( transform_Inverse( (video_transform_t)dst ),
                           &angle2, &hflip2 );

    int angle = (angle1 + angle2) % 360;
    bool hflip = hflip1 ^ hflip2;

    return transform_FromBasicOps(angle, hflip);
}
