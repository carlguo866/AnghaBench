
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int den; int num; } ;
struct TYPE_9__ {int debug; TYPE_2__ framerate; } ;
struct TYPE_6__ {int size_in_bits; } ;
struct TYPE_8__ {TYPE_5__* avctx; scalar_t__ h263_slice_structured; scalar_t__ loop_filter; scalar_t__ modified_quant; scalar_t__ alt_inter_vlc; scalar_t__ h263_aic; scalar_t__ h263_plus; scalar_t__ h263_long_vectors; scalar_t__ umvplus; scalar_t__ obmc; scalar_t__ no_rounding; TYPE_1__ gb; int pict_type; int qscale; } ;
typedef TYPE_3__ MpegEncContext ;


 int AV_LOG_DEBUG ;
 int FF_DEBUG_PICT_INFO ;
 int av_get_picture_type_char (int ) ;
 int av_log (TYPE_5__*,int ,char*,int ,int ,int ,scalar_t__,char*,char*,char*,char*,char*,char*,char*,char*,char*,int ,int ) ;

void ff_h263_show_pict_info(MpegEncContext *s){
    if(s->avctx->debug&FF_DEBUG_PICT_INFO){
    av_log(s->avctx, AV_LOG_DEBUG, "qp:%d %c size:%d rnd:%d%s%s%s%s%s%s%s%s%s %d/%d\n",
         s->qscale, av_get_picture_type_char(s->pict_type),
         s->gb.size_in_bits, 1-s->no_rounding,
         s->obmc ? " AP" : "",
         s->umvplus ? " UMV" : "",
         s->h263_long_vectors ? " LONG" : "",
         s->h263_plus ? " +" : "",
         s->h263_aic ? " AIC" : "",
         s->alt_inter_vlc ? " AIV" : "",
         s->modified_quant ? " MQ" : "",
         s->loop_filter ? " LOOP" : "",
         s->h263_slice_structured ? " SS" : "",
         s->avctx->framerate.num, s->avctx->framerate.den
    );
    }
}
