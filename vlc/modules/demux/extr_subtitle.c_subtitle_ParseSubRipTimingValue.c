
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_FROM_MS (int) ;
 int sscanf (char const*,char*,int*,int*,int*,...) ;
 scalar_t__ vlc_tick_from_sec (int) ;

__attribute__((used)) static int subtitle_ParseSubRipTimingValue(vlc_tick_t *timing_value,
                                           const char *s)
{
    int h1, m1, s1, d1 = 0;

    if ( sscanf( s, "%d:%d:%d,%d",
                 &h1, &m1, &s1, &d1 ) == 4 ||
         sscanf( s, "%d:%d:%d.%d",
                 &h1, &m1, &s1, &d1 ) == 4 ||
         sscanf( s, "%d:%d:%d",
                 &h1, &m1, &s1) == 3 )
    {
        (*timing_value) = vlc_tick_from_sec( h1 * 3600 + m1 * 60 + s1) +
                          VLC_TICK_FROM_MS( d1 );

        return VLC_SUCCESS;
    }

    return VLC_EGENERIC;
}
