
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_OPT_FLAG_DECODING_PARAM ;
 int AV_OPT_FLAG_ENCODING_PARAM ;
 int AV_OPT_FLAG_FILTERING_PARAM ;
 int OPT_EXPERT ;
 int av_log_set_callback (int ) ;
 int avcodec_get_class () ;
 int avfilter_get_class () ;
 int avformat_get_class () ;
 int log_callback_help ;
 int options ;
 int printf (char*) ;
 int show_help_children (int ,int ) ;
 int show_help_options (int ,char*,int ,int ,int ) ;
 int show_usage () ;
 int sws_get_class () ;

void show_help_default(const char *opt, const char *arg)
{
    av_log_set_callback(log_callback_help);
    show_usage();
    show_help_options(options, "Main options:", 0, OPT_EXPERT, 0);
    show_help_options(options, "Advanced options:", OPT_EXPERT, 0, 0);
    printf("\n");
    show_help_children(avcodec_get_class(), AV_OPT_FLAG_DECODING_PARAM);
    show_help_children(avformat_get_class(), AV_OPT_FLAG_DECODING_PARAM);

    show_help_children(sws_get_class(), AV_OPT_FLAG_ENCODING_PARAM);



    printf("\nWhile playing:\n"
           "q, ESC              quit\n"
           "f                   toggle full screen\n"
           "p, SPC              pause\n"
           "m                   toggle mute\n"
           "9, 0                decrease and increase volume respectively\n"
           "/, *                decrease and increase volume respectively\n"
           "a                   cycle audio channel in the current program\n"
           "v                   cycle video channel\n"
           "t                   cycle subtitle channel in the current program\n"
           "c                   cycle program\n"
           "w                   cycle video filters or show modes\n"
           "s                   activate frame-step mode\n"
           "left/right          seek backward/forward 10 seconds or to custom interval if -seek_interval is set\n"
           "down/up             seek backward/forward 1 minute\n"
           "page down/page up   seek backward/forward 10 minutes\n"
           "right mouse click   seek to percentage in file corresponding to fraction of width\n"
           "left double-click   toggle full screen\n"
           );
}
