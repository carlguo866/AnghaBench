
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct jpeg_entropy_decoder {int dummy; } ;
typedef TYPE_3__* j_decompress_ptr ;
typedef int j_common_ptr ;
typedef TYPE_4__* huff_entropy_ptr ;
struct TYPE_6__ {int decode_mcu; int start_pass; } ;
struct TYPE_9__ {int ** ac_derived_tbls; int * dc_derived_tbls; TYPE_1__ pub; } ;
struct TYPE_8__ {struct jpeg_entropy_decoder* entropy; TYPE_2__* mem; } ;
struct TYPE_7__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 int JPOOL_IMAGE ;
 int NUM_HUFF_TBLS ;
 int SIZEOF (int ) ;
 int decode_mcu ;
 int huff_entropy_decoder ;
 int start_pass_huff_decoder ;
 scalar_t__ stub1 (int ,int ,int ) ;

void
jinit_huff_decoder (j_decompress_ptr cinfo)
{
  huff_entropy_ptr entropy;
  int i;

  entropy = (huff_entropy_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(huff_entropy_decoder));
  cinfo->entropy = (struct jpeg_entropy_decoder *) entropy;
  entropy->pub.start_pass = start_pass_huff_decoder;
  entropy->pub.decode_mcu = decode_mcu;


  for (i = 0; i < NUM_HUFF_TBLS; i++) {
    entropy->dc_derived_tbls[i] = entropy->ac_derived_tbls[i] = ((void*)0);
  }
}
