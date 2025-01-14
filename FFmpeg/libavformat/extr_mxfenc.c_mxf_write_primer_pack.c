
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {int uid; int local_tag; } ;
struct TYPE_16__ {int nb_streams; TYPE_2__** streams; int * pb; TYPE_4__* priv_data; } ;
struct TYPE_15__ {int store_user_comments; } ;
struct TYPE_14__ {int avc_intra; } ;
struct TYPE_13__ {TYPE_1__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_12__ {scalar_t__ codec_id; } ;
typedef TYPE_3__ MXFStreamContext ;
typedef TYPE_4__ MXFContext ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_H264 ;
 int FF_ARRAY_ELEMS (TYPE_7__*) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int klv_encode_ber_length (int *,int) ;
 TYPE_7__* mxf_avc_subdescriptor_local_tags ;
 TYPE_7__* mxf_local_tag_batch ;
 TYPE_7__* mxf_user_comments_local_tag ;
 int mxf_write_local_tags (int *,TYPE_7__*,int) ;
 int primer_pack_key ;

__attribute__((used)) static void mxf_write_primer_pack(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int local_tag_number, i = 0;
    int avc_tags_count = 0;

    local_tag_number = FF_ARRAY_ELEMS(mxf_local_tag_batch);
    local_tag_number += mxf->store_user_comments * FF_ARRAY_ELEMS(mxf_user_comments_local_tag);

    for (i = 0; i < s->nb_streams; i++) {
        MXFStreamContext *sc = s->streams[i]->priv_data;
        if (s->streams[i]->codecpar->codec_id == AV_CODEC_ID_H264 && !sc->avc_intra) {
            avc_tags_count = FF_ARRAY_ELEMS(mxf_avc_subdescriptor_local_tags);
            local_tag_number += avc_tags_count;
        }
    }

    avio_write(pb, primer_pack_key, 16);
    klv_encode_ber_length(pb, local_tag_number * 18 + 8);

    avio_wb32(pb, local_tag_number);
    avio_wb32(pb, 18);

    for (i = 0; i < FF_ARRAY_ELEMS(mxf_local_tag_batch); i++) {
        avio_wb16(pb, mxf_local_tag_batch[i].local_tag);
        avio_write(pb, mxf_local_tag_batch[i].uid, 16);
    }
    if (mxf->store_user_comments)
        for (i = 0; i < FF_ARRAY_ELEMS(mxf_user_comments_local_tag); i++) {
            avio_wb16(pb, mxf_user_comments_local_tag[i].local_tag);
            avio_write(pb, mxf_user_comments_local_tag[i].uid, 16);
        }
    if (avc_tags_count > 0)
        mxf_write_local_tags(pb, mxf_avc_subdescriptor_local_tags, avc_tags_count);
}
