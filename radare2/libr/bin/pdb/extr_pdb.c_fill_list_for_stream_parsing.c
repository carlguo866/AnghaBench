
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sn_token_rid_map; int sn_pdata; int sn_xdata; int sn_new_fpo; int sn_fpo; int sn_omap_from_src; int sn_omap_to_src; int sn_section_hdr_orig; int sn_section_hdr; } ;
struct TYPE_5__ {int symrecStream; } ;
struct TYPE_7__ {TYPE_2__ dbg_header; TYPE_1__ dbi_header; } ;
typedef int SPEStream ;
typedef int SOmapStream ;
typedef int SGDATAStream ;
typedef int SFPOStream ;
typedef int SFPONewStream ;
typedef TYPE_3__ SDbiStream ;
typedef int RList ;


 int ADD_INDX_TO_LIST (int *,int ,int,int ,int ,int ) ;
 int ePDB_STREAM_FPO ;
 int ePDB_STREAM_FPO_NEW ;
 int ePDB_STREAM_GSYM ;
 int ePDB_STREAM_OMAP_FROM_SRC ;
 int ePDB_STREAM_OMAP_TO_SRC ;
 int ePDB_STREAM_PDATA ;
 int ePDB_STREAM_SECT_HDR ;
 int ePDB_STREAM_SECT__HDR_ORIG ;
 int ePDB_STREAM_TOKEN_RID_MAP ;
 int ePDB_STREAM_XDATA ;
 int free_fpo_stream ;
 int free_gdata_stream ;
 int free_omap_stream ;
 int free_pe_stream ;
 int parse_fpo_new_stream ;
 int parse_fpo_stream ;
 int parse_gdata_stream ;
 int parse_omap_stream ;
 int parse_pe_stream ;

__attribute__((used)) static void fill_list_for_stream_parsing(RList *l, SDbiStream *dbi_stream) {
 ADD_INDX_TO_LIST (l, dbi_stream->dbi_header.symrecStream, sizeof (SGDATAStream),
  ePDB_STREAM_GSYM, free_gdata_stream, parse_gdata_stream);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_section_hdr, sizeof (SPEStream),
  ePDB_STREAM_SECT_HDR, free_pe_stream, parse_pe_stream);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_section_hdr_orig, sizeof(SPEStream),
  ePDB_STREAM_SECT__HDR_ORIG, free_pe_stream, parse_pe_stream);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_omap_to_src, sizeof(SOmapStream),
  ePDB_STREAM_OMAP_TO_SRC, free_omap_stream, parse_omap_stream);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_omap_from_src, sizeof(SOmapStream),
  ePDB_STREAM_OMAP_FROM_SRC, free_omap_stream, parse_omap_stream);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_fpo, sizeof(SFPOStream),
  ePDB_STREAM_FPO, free_fpo_stream, parse_fpo_stream);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_new_fpo, sizeof(SFPONewStream),
  ePDB_STREAM_FPO_NEW, free_fpo_stream, parse_fpo_new_stream);


 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_xdata, 0, ePDB_STREAM_XDATA, 0, 0);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_pdata, 0, ePDB_STREAM_PDATA, 0, 0);
 ADD_INDX_TO_LIST (l, dbi_stream->dbg_header.sn_token_rid_map, 0, ePDB_STREAM_TOKEN_RID_MAP, 0, 0);
}
