
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct hxxx_helper {int i_nal_length_size; } ;
struct TYPE_6__ {int i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 int assert (int ) ;
 int h264_AVC_to_AnnexB (int ,int ,int ) ;
 int helper_nal_length_valid (struct hxxx_helper*) ;
 TYPE_1__* helper_process_block_h264_annexb (struct hxxx_helper*,TYPE_1__*,int*) ;

__attribute__((used)) static block_t *
helper_process_block_xvcc2annexb(struct hxxx_helper *hh, block_t *p_block,
                                 bool *p_config_changed)
{
    assert(helper_nal_length_valid(hh));
    h264_AVC_to_AnnexB(p_block->p_buffer, p_block->i_buffer,
                       hh->i_nal_length_size);
    return helper_process_block_h264_annexb(hh, p_block, p_config_changed);
}
