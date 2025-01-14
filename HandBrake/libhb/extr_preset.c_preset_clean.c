
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_3__ {int format; } ;
typedef TYPE_1__ hb_container_t ;


 int HB_ACODEC_INVALID ;
 int HB_AMIXDOWN_NONE ;
 int HB_INVALID_AMIXDOWN ;
 int HB_MUX_INVALID ;
 int HB_VCODEC_INVALID ;
 int dict_clean (int *,int *) ;
 int hb_audio_encoder_get_default (int) ;
 int hb_audio_encoder_get_from_name (char const*) ;
 char* hb_audio_encoder_get_short_name (int) ;
 int hb_audio_samplerate_get_from_name (char const*) ;
 int hb_container_get_from_name (char const*) ;
 TYPE_1__* hb_container_get_next (int *) ;
 char* hb_container_get_short_name (int) ;
 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_error (char*,char const*,char const*) ;
 int hb_mixdown_get_from_name (char const*) ;
 char* hb_mixdown_get_short_name (int) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 char* hb_value_get_string (int *) ;
 int * hb_value_string (char const*) ;
 int hb_video_encoder_get_default (int) ;
 int hb_video_encoder_get_from_name (char const*) ;
 char* hb_video_encoder_get_short_name (int) ;
 int hb_video_framerate_get_from_name (char const*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void preset_clean(hb_value_t *preset, hb_value_t *template)
{
    dict_clean(preset, template);



    hb_value_t *val;
    const char *preset_name = ((void*)0);
    int muxer;

    val = hb_dict_get(preset, "PresetName");
    if (val != ((void*)0))
        preset_name = hb_value_get_string(val);

    val = hb_dict_get(preset, "FileFormat");
    if (val != ((void*)0))
    {
        const char *s, *mux;
        s = hb_value_get_string(val);
        muxer = hb_container_get_from_name(s);
        if (muxer == HB_MUX_INVALID)
        {
            const hb_container_t *c = hb_container_get_next(((void*)0));
            muxer = c->format;
            hb_error("Preset %s: Invalid container (%s)", preset_name, s);
        }
        mux = hb_container_get_short_name(muxer);
        val = hb_value_string(mux);
        hb_dict_set(preset, "FileFormat", val);
    }
    else
    {
        const hb_container_t *c = hb_container_get_next(((void*)0));
        muxer = c->format;
    }
    val = hb_dict_get(preset, "VideoEncoder");
    if (val != ((void*)0))
    {
        const char *s, *enc;
        int vcodec;
        s = hb_value_get_string(val);
        vcodec = hb_video_encoder_get_from_name(s);
        if (vcodec == HB_VCODEC_INVALID)
        {
            vcodec = hb_video_encoder_get_default(muxer);
            hb_error("Preset %s: Invalid video encoder (%s)", preset_name, s);
        }
        enc = hb_video_encoder_get_short_name(vcodec);
        val = hb_value_string(enc);
        hb_dict_set(preset, "VideoEncoder", val);
    }
    val = hb_dict_get(preset, "VideoFramerate");
    if (val != ((void*)0))
    {
        const char *s;
        s = hb_value_get_string(val);
        if (strcasecmp(s, "auto"))
        {
            int fr = hb_video_framerate_get_from_name(s);
            if (fr < 0)
            {
                if (strcasecmp(s, "same as source"))
                {
                    hb_error("Preset %s: Invalid video framerate (%s)",
                             preset_name, s);
                }
                val = hb_value_string("auto");
                hb_dict_set(preset, "VideoFramerate", val);
            }
        }
    }
    val = hb_dict_get(preset, "AudioEncoderFallback");
    if (val != ((void*)0))
    {
        const char *s, *enc;
        int acodec;
        s = hb_value_get_string(val);
        acodec = hb_audio_encoder_get_from_name(s);
        if (acodec == HB_ACODEC_INVALID)
        {
            acodec = hb_audio_encoder_get_default(muxer);
            hb_error("Preset %s: Invalid audio fallback encoder (%s)",
                     preset_name, s);
        }
        enc = hb_audio_encoder_get_short_name(acodec);
        val = hb_value_string(enc);
        hb_dict_set(preset, "AudioEncoderFallback", val);
    }
    hb_value_t *alist = hb_dict_get(preset, "AudioList");
    int count = hb_value_array_len(alist);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t *adict = hb_value_array_get(alist, ii);
        val = hb_dict_get(adict, "AudioEncoder");
        if (val != ((void*)0))
        {
            const char *s, *enc;
            int acodec;
            s = hb_value_get_string(val);
            acodec = hb_audio_encoder_get_from_name(s);
            if (acodec == HB_ACODEC_INVALID)
            {
                acodec = hb_audio_encoder_get_default(muxer);
                hb_error("Preset %s: Invalid audio encoder (%s)",
                         preset_name, s);
            }
            enc = hb_audio_encoder_get_short_name(acodec);
            val = hb_value_string(enc);
            hb_dict_set(adict, "AudioEncoder", val);
        }
        val = hb_dict_get(adict, "AudioSamplerate");
        if (val != ((void*)0))
        {
            const char *s;
            s = hb_value_get_string(val);
            if (strcasecmp(s, "auto"))
            {
                int sr = hb_audio_samplerate_get_from_name(s);
                if (sr < 0)
                {
                    hb_error("Preset %s: Invalid audio samplerate (%s)",
                             preset_name, s);
                    val = hb_value_string("auto");
                    hb_dict_set(adict, "AudioSamplerate", val);
                }
            }
        }
        val = hb_dict_get(adict, "AudioMixdown");
        if (val != ((void*)0))
        {
            const char *s, *mix;
            s = hb_value_get_string(val);
            int mixdown = hb_mixdown_get_from_name(s);
            if (mixdown == HB_INVALID_AMIXDOWN)
            {

                mixdown = HB_AMIXDOWN_NONE;
                hb_error("Preset %s: Invalid audio mixdown (%s)",
                         preset_name, s);
            }
            mix = hb_mixdown_get_short_name(mixdown);
            val = hb_value_string(mix);
            hb_dict_set(adict, "AudioMixdown", val);
        }
    }
}
