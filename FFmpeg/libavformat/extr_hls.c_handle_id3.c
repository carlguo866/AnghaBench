
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist {int id3_found; int id3_changed; int * id3_deferred_extra; int parent; int * id3_initial; TYPE_1__* ctx; scalar_t__ id3_offset; scalar_t__ id3_mpegts_timestamp; } ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int metadata; scalar_t__ nb_streams; } ;
typedef int ID3v2ExtraMetaAPIC ;
typedef int ID3v2ExtraMeta ;
typedef int AVIOContext ;
typedef int AVDictionary ;


 scalar_t__ AV_NOPTS_VALUE ;
 int av_assert0 (int) ;
 int av_dict_copy (int *,int *,int ) ;
 int av_dict_free (int **) ;
 int avpriv_report_missing_feature (int ,char*) ;
 int ff_id3v2_free_extra_meta (int **) ;
 int ff_id3v2_parse_apic (TYPE_1__*,int **) ;
 int ff_id3v2_parse_priv_dict (int **,int **) ;
 scalar_t__ id3_has_changed_values (struct playlist*,int *,int *) ;
 int parse_id3 (TYPE_1__*,int *,int **,scalar_t__*,int **,int **) ;

__attribute__((used)) static void handle_id3(AVIOContext *pb, struct playlist *pls)
{
    AVDictionary *metadata = ((void*)0);
    ID3v2ExtraMetaAPIC *apic = ((void*)0);
    ID3v2ExtraMeta *extra_meta = ((void*)0);
    int64_t timestamp = AV_NOPTS_VALUE;

    parse_id3(pls->ctx, pb, &metadata, &timestamp, &apic, &extra_meta);

    if (timestamp != AV_NOPTS_VALUE) {
        pls->id3_mpegts_timestamp = timestamp;
        pls->id3_offset = 0;
    }

    if (!pls->id3_found) {

        av_assert0(!pls->id3_deferred_extra);
        pls->id3_found = 1;


        if (pls->ctx->nb_streams)
            ff_id3v2_parse_apic(pls->ctx, &extra_meta);
        else

            pls->id3_deferred_extra = extra_meta;

        ff_id3v2_parse_priv_dict(&metadata, &extra_meta);
        av_dict_copy(&pls->ctx->metadata, metadata, 0);
        pls->id3_initial = metadata;

    } else {
        if (!pls->id3_changed && id3_has_changed_values(pls, metadata, apic)) {
            avpriv_report_missing_feature(pls->parent, "Changing ID3 metadata in HLS audio elementary stream");
            pls->id3_changed = 1;
        }
        av_dict_free(&metadata);
    }

    if (!pls->id3_deferred_extra)
        ff_id3v2_free_extra_meta(&extra_meta);
}
