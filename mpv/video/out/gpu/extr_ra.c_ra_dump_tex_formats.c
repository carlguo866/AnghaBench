
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {int ctype; int num_components; scalar_t__ storable; scalar_t__ renderable; scalar_t__ linear_filter; scalar_t__ luminance_alpha; int pixel_size; int name; int * component_depth; int * component_size; } ;
struct ra {int num_formats; struct ra_format** formats; int log; } ;
typedef int cl ;


 int MP_MSG (struct ra*,int,char*,...) ;



 int mp_msg_test (int ,int) ;
 int mp_snprintf_cat (char*,int,char*,char*,...) ;

void ra_dump_tex_formats(struct ra *ra, int msgl)
{
    if (!mp_msg_test(ra->log, msgl))
        return;
    MP_MSG(ra, msgl, "Texture formats:\n");
    MP_MSG(ra, msgl, "  NAME       COMP*TYPE SIZE           DEPTH PER COMP.\n");
    for (int n = 0; n < ra->num_formats; n++) {
        const struct ra_format *fmt = ra->formats[n];
        const char *ctype = "unknown";
        switch (fmt->ctype) {
        case 128: ctype = "unorm"; break;
        case 129: ctype = "uint "; break;
        case 130: ctype = "float"; break;
        }
        char cl[40] = "";
        for (int i = 0; i < fmt->num_components; i++) {
            mp_snprintf_cat(cl, sizeof(cl), "%s%d", i ? " " : "",
                            fmt->component_size[i]);
            if (fmt->component_size[i] != fmt->component_depth[i])
                mp_snprintf_cat(cl, sizeof(cl), "/%d", fmt->component_depth[i]);
        }
        MP_MSG(ra, msgl, "  %-10s %d*%s %3dB %s %s %s %s {%s}\n", fmt->name,
               fmt->num_components, ctype, fmt->pixel_size,
               fmt->luminance_alpha ? "LA" : "  ",
               fmt->linear_filter ? "LF" : "  ",
               fmt->renderable ? "CR" : "  ",
               fmt->storable ? "ST" : "  ", cl);
    }
    MP_MSG(ra, msgl, " LA = LUMINANCE_ALPHA hack format\n");
    MP_MSG(ra, msgl, " LF = linear filterable\n");
    MP_MSG(ra, msgl, " CR = can be used for render targets\n");
    MP_MSG(ra, msgl, " ST = can be used for storable images\n");
}
