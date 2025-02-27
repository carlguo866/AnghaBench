
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_3__ {scalar_t__ video_out; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_SET ;
 int m_property_double_ro (int,void*,double) ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 double vo_get_display_fps (scalar_t__) ;

__attribute__((used)) static int mp_property_display_fps(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    double fps = mpctx->video_out ? vo_get_display_fps(mpctx->video_out) : 0;
    if (fps > 0 && action != M_PROPERTY_SET)
        return m_property_double_ro(action, arg, fps);
    return mp_property_generic_option(mpctx, prop, action, arg);
}
