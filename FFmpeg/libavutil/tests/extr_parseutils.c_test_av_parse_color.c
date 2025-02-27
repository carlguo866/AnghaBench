
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_LOG_DEBUG ;
 int FF_ARRAY_ELEMS (char const* const*) ;
 int av_log_set_level (int ) ;
 scalar_t__ av_parse_color (int*,char const* const,int,int *) ;
 int printf (char*,char const* const,...) ;

__attribute__((used)) static void test_av_parse_color(void)
{
    int i;
    uint8_t rgba[4];
    static const char *const color_names[] = {
        "bikeshed",
        "RaNdOm",
        "foo",
        "red",
        "Red ",
        "RED",
        "Violet",
        "Yellow",
        "Red",
        "0x000000",
        "0x0000000",
        "0xff000000",
        "0x3e34ff",
        "0x3e34ffaa",
        "0xffXXee",
        "0xfoobar",
        "0xffffeeeeeeee",
        "#ff0000",
        "#ffXX00",
        "ff0000",
        "ffXX00",
        "red@foo",
        "random@10",
        "0xff0000@1.0",
        "red@",
        "red@0xfff",
        "red@0xf",
        "red@2",
        "red@0.1",
        "red@-1",
        "red@0.5",
        "red@1.0",
        "red@256",
        "red@10foo",
        "red@-1.0",
        "red@-0.0",
    };

    av_log_set_level(AV_LOG_DEBUG);

    for (i = 0; i < FF_ARRAY_ELEMS(color_names); i++) {
        if (av_parse_color(rgba, color_names[i], -1, ((void*)0)) >= 0)
            printf("%s -> R(%d) G(%d) B(%d) A(%d)\n",
                   color_names[i], rgba[0], rgba[1], rgba[2], rgba[3]);
        else
            printf("%s -> error\n", color_names[i]);
    }
}
