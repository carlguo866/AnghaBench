
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;


 size_t fARCH_aarch64 ;
 size_t fARCH_arm ;
 size_t fARCH_i386 ;
 size_t fARCH_x86_64 ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ g_ascii_strncasecmp (char*,char*,int) ;
 char* g_strstrip (char*) ;
 int replacestr (char*,char*,char*) ;
 int stderr ;
 scalar_t__ verbose ;

void extract_arch_from_text(gchar *archname, const gchar* sourcename, bool* archs) {
    if (archname) {
        archname = g_strstrip(archname);
        if (archname) {
            replacestr(archname, "-", "_");
            replacestr(archname, " ", "_");
            if (g_ascii_strncasecmp("i386", archname, 20) == 0
                    || g_ascii_strncasecmp("i486", archname, 20) == 0
                    || g_ascii_strncasecmp("i586", archname, 20) == 0
                    || g_ascii_strncasecmp("i686", archname, 20) == 0
                    || g_ascii_strncasecmp("intel_80386", archname, 20) == 0
                    || g_ascii_strncasecmp("intel_80486", archname, 20) == 0
                    || g_ascii_strncasecmp("intel_80586", archname, 20) == 0
                    || g_ascii_strncasecmp("intel_80686", archname, 20) == 0
                    ) {
                archs[fARCH_i386] = 1;
                if (verbose)
                    fprintf(stderr, "%s used for determining architecture i386\n", sourcename);
            } else if (g_ascii_strncasecmp("x86_64", archname, 20) == 0) {
                archs[fARCH_x86_64] = 1;
                if (verbose)
                    fprintf(stderr, "%s used for determining architecture x86_64\n", sourcename);
            } else if (g_ascii_strncasecmp("arm", archname, 20) == 0) {
                archs[fARCH_arm] = 1;
                if (verbose)
                    fprintf(stderr, "%s used for determining architecture ARM\n", sourcename);
            } else if (g_ascii_strncasecmp("arm_aarch64", archname, 20) == 0) {
                archs[fARCH_aarch64] = 1;
                if (verbose)
                    fprintf(stderr, "%s used for determining architecture ARM aarch64\n", sourcename);
            }
        }
    }
}
