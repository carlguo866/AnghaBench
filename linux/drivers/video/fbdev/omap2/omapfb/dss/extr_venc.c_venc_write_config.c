
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venc_config {int llen; int flens; int cc_carr_wss_carr; int c_phase; int gain_u; int gain_v; int gain_y; int black_level; int blank_level; int m_control; int bstamp_wss_data; int s_carr; int l21__wc_ctl; int savid__eavid; int flen__fal; int lal__phase_reset; int hs_int_start_stop_x; int hs_ext_start_stop_x; int vs_int_start_x; int vs_int_stop_x__vs_int_start_y; int vs_int_stop_y__vs_ext_start_x; int vs_ext_stop_x__vs_ext_start_y; int vs_ext_stop_y; int avid_start_stop_x; int avid_start_stop_y; int fid_int_start_x__fid_int_start_y; int fid_int_offset_y__fid_ext_start_x; int fid_ext_start_y__fid_ext_offset_y; int vidout_ctrl; int hfltr_ctrl; int x_color; int line21; int ln_sel; int htrigger_vtrigger; int tvdetgp_int_start_stop_x; int tvdetgp_int_start_stop_y; int gen_ctrl; int f_control; int sync_ctrl; } ;
struct TYPE_2__ {int wss_data; } ;


 int DSSDBG (char*) ;
 int VENC_AVID_START_STOP_X ;
 int VENC_AVID_START_STOP_Y ;
 int VENC_BLACK_LEVEL ;
 int VENC_BLANK_LEVEL ;
 int VENC_BSTAMP_WSS_DATA ;
 int VENC_CC_CARR_WSS_CARR ;
 int VENC_C_PHASE ;
 int VENC_DAC_B__DAC_C ;
 int VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y ;
 int VENC_FID_INT_OFFSET_Y__FID_EXT_START_X ;
 int VENC_FID_INT_START_X__FID_INT_START_Y ;
 int VENC_FLENS ;
 int VENC_FLEN__FAL ;
 int VENC_F_CONTROL ;
 int VENC_GAIN_U ;
 int VENC_GAIN_V ;
 int VENC_GAIN_Y ;
 int VENC_GEN_CTRL ;
 int VENC_HFLTR_CTRL ;
 int VENC_HS_EXT_START_STOP_X ;
 int VENC_HS_INT_START_STOP_X ;
 int VENC_HTRIGGER_VTRIGGER ;
 int VENC_L21__WC_CTL ;
 int VENC_LAL__PHASE_RESET ;
 int VENC_LINE21 ;
 int VENC_LLEN ;
 int VENC_LN_SEL ;
 int VENC_M_CONTROL ;
 int VENC_SAVID__EAVID ;
 int VENC_SYNC_CTRL ;
 int VENC_S_CARR ;
 int VENC_TVDETGP_INT_START_STOP_X ;
 int VENC_TVDETGP_INT_START_STOP_Y ;
 int VENC_VIDOUT_CTRL ;
 int VENC_VS_EXT_STOP_X__VS_EXT_START_Y ;
 int VENC_VS_EXT_STOP_Y ;
 int VENC_VS_INT_START_X ;
 int VENC_VS_INT_STOP_X__VS_INT_START_Y ;
 int VENC_VS_INT_STOP_Y__VS_EXT_START_X ;
 int VENC_X_COLOR ;
 TYPE_1__ venc ;
 int venc_read_reg (int ) ;
 int venc_write_reg (int ,int) ;

__attribute__((used)) static void venc_write_config(const struct venc_config *config)
{
 DSSDBG("write venc conf\n");

 venc_write_reg(VENC_LLEN, config->llen);
 venc_write_reg(VENC_FLENS, config->flens);
 venc_write_reg(VENC_CC_CARR_WSS_CARR, config->cc_carr_wss_carr);
 venc_write_reg(VENC_C_PHASE, config->c_phase);
 venc_write_reg(VENC_GAIN_U, config->gain_u);
 venc_write_reg(VENC_GAIN_V, config->gain_v);
 venc_write_reg(VENC_GAIN_Y, config->gain_y);
 venc_write_reg(VENC_BLACK_LEVEL, config->black_level);
 venc_write_reg(VENC_BLANK_LEVEL, config->blank_level);
 venc_write_reg(VENC_M_CONTROL, config->m_control);
 venc_write_reg(VENC_BSTAMP_WSS_DATA, config->bstamp_wss_data |
   venc.wss_data);
 venc_write_reg(VENC_S_CARR, config->s_carr);
 venc_write_reg(VENC_L21__WC_CTL, config->l21__wc_ctl);
 venc_write_reg(VENC_SAVID__EAVID, config->savid__eavid);
 venc_write_reg(VENC_FLEN__FAL, config->flen__fal);
 venc_write_reg(VENC_LAL__PHASE_RESET, config->lal__phase_reset);
 venc_write_reg(VENC_HS_INT_START_STOP_X, config->hs_int_start_stop_x);
 venc_write_reg(VENC_HS_EXT_START_STOP_X, config->hs_ext_start_stop_x);
 venc_write_reg(VENC_VS_INT_START_X, config->vs_int_start_x);
 venc_write_reg(VENC_VS_INT_STOP_X__VS_INT_START_Y,
         config->vs_int_stop_x__vs_int_start_y);
 venc_write_reg(VENC_VS_INT_STOP_Y__VS_EXT_START_X,
         config->vs_int_stop_y__vs_ext_start_x);
 venc_write_reg(VENC_VS_EXT_STOP_X__VS_EXT_START_Y,
         config->vs_ext_stop_x__vs_ext_start_y);
 venc_write_reg(VENC_VS_EXT_STOP_Y, config->vs_ext_stop_y);
 venc_write_reg(VENC_AVID_START_STOP_X, config->avid_start_stop_x);
 venc_write_reg(VENC_AVID_START_STOP_Y, config->avid_start_stop_y);
 venc_write_reg(VENC_FID_INT_START_X__FID_INT_START_Y,
         config->fid_int_start_x__fid_int_start_y);
 venc_write_reg(VENC_FID_INT_OFFSET_Y__FID_EXT_START_X,
         config->fid_int_offset_y__fid_ext_start_x);
 venc_write_reg(VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y,
         config->fid_ext_start_y__fid_ext_offset_y);

 venc_write_reg(VENC_DAC_B__DAC_C, venc_read_reg(VENC_DAC_B__DAC_C));
 venc_write_reg(VENC_VIDOUT_CTRL, config->vidout_ctrl);
 venc_write_reg(VENC_HFLTR_CTRL, config->hfltr_ctrl);
 venc_write_reg(VENC_X_COLOR, config->x_color);
 venc_write_reg(VENC_LINE21, config->line21);
 venc_write_reg(VENC_LN_SEL, config->ln_sel);
 venc_write_reg(VENC_HTRIGGER_VTRIGGER, config->htrigger_vtrigger);
 venc_write_reg(VENC_TVDETGP_INT_START_STOP_X,
         config->tvdetgp_int_start_stop_x);
 venc_write_reg(VENC_TVDETGP_INT_START_STOP_Y,
         config->tvdetgp_int_start_stop_y);
 venc_write_reg(VENC_GEN_CTRL, config->gen_ctrl);
 venc_write_reg(VENC_F_CONTROL, config->f_control);
 venc_write_reg(VENC_SYNC_CTRL, config->sync_ctrl);
}
