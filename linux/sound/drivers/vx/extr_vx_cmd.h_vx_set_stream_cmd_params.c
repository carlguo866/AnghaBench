
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vx_rmh {int* Cmd; } ;


 int COMMAND_RECORD_MASK ;
 int FIELD_SIZE ;
 int MASK_DSP_WORD ;
 int MASK_FIRST_FIELD ;

__attribute__((used)) static inline void vx_set_stream_cmd_params(struct vx_rmh *rmh, int is_capture, int pipe)
{
 if (is_capture)
  rmh->Cmd[0] |= COMMAND_RECORD_MASK;
 rmh->Cmd[0] |= (((u32)pipe & MASK_FIRST_FIELD) << FIELD_SIZE) & MASK_DSP_WORD;
}
