
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int base; int frames; } ;
typedef TYPE_1__ tt_time_t ;


 unsigned int CLOCK_FREQ ;
 int asprintf (char**,char*,unsigned int,unsigned int,unsigned int,...) ;
 int tt_time_Valid (TYPE_1__*) ;

__attribute__((used)) static char *tt_genTiming( tt_time_t t )
{
    if( !tt_time_Valid( &t ) )
        t.base = 0;
    unsigned f = t.base % CLOCK_FREQ;
    t.base /= CLOCK_FREQ;
    unsigned h = t.base / 3600;
    unsigned m = t.base % 3600 / 60;
    unsigned s = t.base % 60;

    int i_ret;
    char *psz;
    if( f )
    {
        const char *lz = "000000";
        const char *psz_lz = &lz[6];

        for( unsigned i=10*f; i<CLOCK_FREQ; i *= 10 )
            psz_lz--;

        for( ; f > 0 && (f % 10) == 0; f /= 10 );
        i_ret = asprintf( &psz, "%02u:%02u:%02u.%s%u",
                                 h, m, s, psz_lz, f );
    }
    else if( t.frames )
    {
        i_ret = asprintf( &psz, "%02u:%02u:%02u:%s%u",
                                 h, m, s, t.frames < 10 ? "0" : "", t.frames );
    }
    else
    {
        i_ret = asprintf( &psz, "%02u:%02u:%02u",
                                 h, m, s );
    }

    return i_ret < 0 ? ((void*)0) : psz;
}
