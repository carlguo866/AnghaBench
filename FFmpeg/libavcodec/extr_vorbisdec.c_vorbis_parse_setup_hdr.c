
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int avctx; int gb; } ;
typedef TYPE_1__ vorbis_context ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 char get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int vorbis_parse_setup_hdr_codebooks (TYPE_1__*) ;
 int vorbis_parse_setup_hdr_floors (TYPE_1__*) ;
 int vorbis_parse_setup_hdr_mappings (TYPE_1__*) ;
 int vorbis_parse_setup_hdr_modes (TYPE_1__*) ;
 int vorbis_parse_setup_hdr_residues (TYPE_1__*) ;
 int vorbis_parse_setup_hdr_tdtransforms (TYPE_1__*) ;

__attribute__((used)) static int vorbis_parse_setup_hdr(vorbis_context *vc)
{
    GetBitContext *gb = &vc->gb;
    int ret;

    if ((get_bits(gb, 8) != 'v') || (get_bits(gb, 8) != 'o') ||
        (get_bits(gb, 8) != 'r') || (get_bits(gb, 8) != 'b') ||
        (get_bits(gb, 8) != 'i') || (get_bits(gb, 8) != 's')) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (no vorbis signature). \n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = vorbis_parse_setup_hdr_codebooks(vc))) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (codebooks). \n");
        return ret;
    }
    if ((ret = vorbis_parse_setup_hdr_tdtransforms(vc))) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (time domain transforms). \n");
        return ret;
    }
    if ((ret = vorbis_parse_setup_hdr_floors(vc))) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (floors). \n");
        return ret;
    }
    if ((ret = vorbis_parse_setup_hdr_residues(vc))) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (residues). \n");
        return ret;
    }
    if ((ret = vorbis_parse_setup_hdr_mappings(vc))) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (mappings). \n");
        return ret;
    }
    if ((ret = vorbis_parse_setup_hdr_modes(vc))) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (modes). \n");
        return ret;
    }
    if (!get_bits1(gb)) {
        av_log(vc->avctx, AV_LOG_ERROR, " Vorbis setup header packet corrupt (framing flag). \n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
