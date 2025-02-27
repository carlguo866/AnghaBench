
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {double den; scalar_t__ num; } ;
struct TYPE_11__ {int cfr; TYPE_2__ vrate; TYPE_2__ input_vrate; } ;
typedef TYPE_3__ hb_filter_private_t ;
struct TYPE_12__ {TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_filter_object_t ;
struct TYPE_9__ {int cfr; TYPE_2__ vrate; } ;
struct TYPE_13__ {scalar_t__* human_readable_desc; TYPE_1__ output; } ;
typedef TYPE_5__ hb_filter_info_t ;


 TYPE_5__* calloc (int,int) ;
 scalar_t__* malloc (int) ;
 int snprintf (scalar_t__*,int,char*,double,...) ;

__attribute__((used)) static hb_filter_info_t * hb_vfr_info( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_filter_info_t * info;

    if( !pv )
        return ((void*)0);

    info = calloc(1, sizeof(hb_filter_info_t));
    info->human_readable_desc = malloc(128);
    info->human_readable_desc[0] = 0;

    info->output.vrate = pv->input_vrate;
    if (pv->cfr == 2)
    {


        double source_fps = (double)pv->input_vrate.num / pv->input_vrate.den;
        double peak_fps = (double)pv->vrate.num / pv->vrate.den;
        if (source_fps > peak_fps)
        {


            info->output.vrate = pv->vrate;
        }
    }
    else
    {
        info->output.vrate = pv->vrate;
    }
    info->output.cfr = pv->cfr;
    if ( pv->cfr == 0 )
    {

        snprintf( info->human_readable_desc, 128,
                  "frame rate: same as source (around %.3f fps)",
                  (float)pv->vrate.num / pv->vrate.den );
    }
    else if ( pv->cfr == 2 )
    {


        double source_fps = (double)pv->input_vrate.num / pv->input_vrate.den;
        double peak_fps = (double)pv->vrate.num / pv->vrate.den;
        snprintf( info->human_readable_desc, 128,
                  "frame rate: %.3f fps -> peak rate limited to %.3f fps",
                  source_fps , peak_fps );
    }
    else
    {

        double source_fps = (double)pv->input_vrate.num / pv->input_vrate.den;
        double constant_fps = (double)pv->vrate.num / pv->vrate.den;
        snprintf( info->human_readable_desc, 128,
                  "frame rate: %.3f fps -> constant %.3f fps",
                  source_fps , constant_fps );
    }

    return info;
}
