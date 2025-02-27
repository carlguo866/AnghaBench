
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int progressive_source_flag; scalar_t__ interlaced_source_flag; } ;
struct TYPE_8__ {TYPE_3__ general; } ;
struct TYPE_9__ {scalar_t__ field_seq_flag; scalar_t__ frame_field_info_present_flag; } ;
struct TYPE_11__ {TYPE_1__ profile_tier_level; TYPE_2__ vui; scalar_t__ vui_parameters_present_flag; } ;
typedef TYPE_4__ hevc_sequence_parameter_set_t ;
struct TYPE_12__ {int pic_struct; } ;
typedef TYPE_5__ hevc_sei_pic_timing_t ;



uint8_t hevc_get_num_clock_ts( const hevc_sequence_parameter_set_t *p_sps,
                               const hevc_sei_pic_timing_t *p_timing )
{
    if( p_sps->vui.frame_field_info_present_flag && p_timing && p_timing->pic_struct < 13 )
    {

        const uint8_t rgi_numclock[13] = { 2, 1, 1, 2, 2, 3, 3, 4, 6, 1, 1, 1, 1 };
        return rgi_numclock[p_timing->pic_struct];
    }

    if( p_sps->vui_parameters_present_flag )
    {
        if( p_sps->vui.field_seq_flag )
            return 1;
    }
    else if( p_sps->profile_tier_level.general.interlaced_source_flag &&
            !p_sps->profile_tier_level.general.progressive_source_flag )
    {
        return 1;
    }

    return 2;
}
