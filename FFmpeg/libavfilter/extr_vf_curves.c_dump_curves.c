
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef double const uint16_t ;
struct keypoint {struct keypoint* next; int y; int x; } ;
struct TYPE_5__ {int len; int str; } ;
typedef int FILE ;
typedef TYPE_1__ AVBPrint ;


 int AVERROR (int ) ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_LOG_ERROR ;
 int FF_ARRAY_ELEMS (char const* const*) ;
 int NB_COMP ;
 int av_assert0 (int) ;
 int av_bprint_finalize (TYPE_1__*,int *) ;
 int av_bprint_init (TYPE_1__*,int ,int ) ;
 int av_bprintf (TYPE_1__*,char*,...) ;
 int av_err2str (int) ;
 int * av_fopen_utf8 (char const*,char*) ;
 int av_log (int *,int ,char*,char const*,int ) ;
 int errno ;
 int fclose (int *) ;
 int fwrite (int ,int,int ,int *) ;

__attribute__((used)) static int dump_curves(const char *fname, uint16_t *graph[NB_COMP + 1],
                       struct keypoint *comp_points[NB_COMP + 1],
                       int lut_size)
{
    int i;
    AVBPrint buf;
    const double scale = 1. / (lut_size - 1);
    static const char * const colors[] = { "red", "green", "blue", "#404040", };
    FILE *f = av_fopen_utf8(fname, "w");

    av_assert0(FF_ARRAY_ELEMS(colors) == NB_COMP + 1);

    if (!f) {
        int ret = AVERROR(errno);
        av_log(((void*)0), AV_LOG_ERROR, "Cannot open file '%s' for writing: %s\n",
               fname, av_err2str(ret));
        return ret;
    }

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    av_bprintf(&buf, "set xtics 0.1\n");
    av_bprintf(&buf, "set ytics 0.1\n");
    av_bprintf(&buf, "set size square\n");
    av_bprintf(&buf, "set grid\n");

    for (i = 0; i < FF_ARRAY_ELEMS(colors); i++) {
        av_bprintf(&buf, "%s'-' using 1:2 with lines lc '%s' title ''",
                   i ? ", " : "plot ", colors[i]);
        if (comp_points[i])
            av_bprintf(&buf, ", '-' using 1:2 with points pointtype 3 lc '%s' title ''",
                    colors[i]);
    }
    av_bprintf(&buf, "\n");

    for (i = 0; i < FF_ARRAY_ELEMS(colors); i++) {
        int x;


        for (x = 0; x < lut_size; x++)
            av_bprintf(&buf, "%f %f\n", x * scale, graph[i][x] * scale);
        av_bprintf(&buf, "e\n");


        if (comp_points[i]) {
            const struct keypoint *point = comp_points[i];

            while (point) {
                av_bprintf(&buf, "%f %f\n", point->x, point->y);
                point = point->next;
            }
            av_bprintf(&buf, "e\n");
        }
    }

    fwrite(buf.str, 1, buf.len, f);
    fclose(f);
    av_bprint_finalize(&buf, ((void*)0));
    return 0;
}
