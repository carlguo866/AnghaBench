
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hxxx_helper {int dummy; } ;
typedef int block_t ;


 int h264_helper_parse_nal ;
 int * helper_process_block_hxxx_annexb (struct hxxx_helper*,int ,int *,int*) ;

__attribute__((used)) static block_t *
helper_process_block_h264_annexb(struct hxxx_helper *hh, block_t *p_block,
                                 bool *p_config_changed)
{
    if (p_config_changed != ((void*)0))
        return helper_process_block_hxxx_annexb(hh, h264_helper_parse_nal,
                                                p_block,p_config_changed);
    return p_block;
}
