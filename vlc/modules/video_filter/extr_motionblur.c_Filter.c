
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {int b_first; int p_tmp; } ;
typedef TYPE_2__ filter_sys_t ;


 int * CopyInfoAndRelease (int *,int *) ;
 int RenderBlur (TYPE_2__*,int *,int *) ;
 int * filter_NewPicture (TYPE_1__*) ;
 int picture_CopyPixels (int ,int *) ;
 int picture_Release (int *) ;

__attribute__((used)) static picture_t *Filter( filter_t *p_filter, picture_t *p_pic )
{
    picture_t * p_outpic;
    filter_sys_t *p_sys = p_filter->p_sys;

    if( !p_pic ) return ((void*)0);

    p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
    {
        picture_Release( p_pic );
        return ((void*)0);
    }

    if( p_sys->b_first )
    {
        picture_CopyPixels( p_sys->p_tmp, p_pic );
        p_sys->b_first = 0;
    }


    RenderBlur( p_sys, p_pic, p_outpic );

    picture_CopyPixels( p_sys->p_tmp, p_outpic );

    return CopyInfoAndRelease( p_outpic, p_pic );
}
