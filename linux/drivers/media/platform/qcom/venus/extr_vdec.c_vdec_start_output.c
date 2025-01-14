
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {scalar_t__ codec_state; int reconfig; int streamon_out; int num_input_bufs; scalar_t__ sequence_out; } ;


 int EINVAL ;
 int VB2_MAX_FRAME ;
 scalar_t__ VENUS_DEC_STATE_CAPTURE_SETUP ;
 scalar_t__ VENUS_DEC_STATE_DECODING ;
 scalar_t__ VENUS_DEC_STATE_DEINIT ;
 scalar_t__ VENUS_DEC_STATE_INIT ;
 scalar_t__ VENUS_DEC_STATE_SEEK ;
 int vdec_output_conf (struct venus_inst*) ;
 int vdec_set_properties (struct venus_inst*) ;
 int vdec_verify_conf (struct venus_inst*) ;
 int venus_helper_init_instance (struct venus_inst*) ;
 int venus_helper_process_initial_out_bufs (struct venus_inst*) ;
 int venus_helper_set_num_bufs (struct venus_inst*,int ,int ,int ) ;
 int venus_helper_vb2_start_streaming (struct venus_inst*) ;

__attribute__((used)) static int vdec_start_output(struct venus_inst *inst)
{
 int ret;

 if (inst->codec_state == VENUS_DEC_STATE_SEEK) {
  ret = venus_helper_process_initial_out_bufs(inst);
  inst->codec_state = VENUS_DEC_STATE_DECODING;
  goto done;
 }

 if (inst->codec_state == VENUS_DEC_STATE_INIT ||
     inst->codec_state == VENUS_DEC_STATE_CAPTURE_SETUP) {
  ret = venus_helper_process_initial_out_bufs(inst);
  goto done;
 }

 if (inst->codec_state != VENUS_DEC_STATE_DEINIT)
  return -EINVAL;

 venus_helper_init_instance(inst);
 inst->sequence_out = 0;
 inst->reconfig = 0;

 ret = vdec_set_properties(inst);
 if (ret)
  return ret;

 ret = vdec_output_conf(inst);
 if (ret)
  return ret;

 ret = vdec_verify_conf(inst);
 if (ret)
  return ret;

 ret = venus_helper_set_num_bufs(inst, inst->num_input_bufs,
     VB2_MAX_FRAME, VB2_MAX_FRAME);
 if (ret)
  return ret;

 ret = venus_helper_vb2_start_streaming(inst);
 if (ret)
  return ret;

 ret = venus_helper_process_initial_out_bufs(inst);
 if (ret)
  return ret;

 inst->codec_state = VENUS_DEC_STATE_INIT;

done:
 inst->streamon_out = 1;
 return ret;
}
