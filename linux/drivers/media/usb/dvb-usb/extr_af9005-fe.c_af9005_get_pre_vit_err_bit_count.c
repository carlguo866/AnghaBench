
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int d; } ;


 int EINVAL ;
 int af9005_read_ofdm_register (int ,int ,int*) ;
 int af9005_read_register_bits (int ,int ,int ,int ,int*) ;
 int deb_info (char*,...) ;
 int err (char*) ;
 int fec_vtb_ber_rdy_len ;
 int fec_vtb_ber_rdy_pos ;
 int reg_tpsd_const_len ;
 int reg_tpsd_const_pos ;
 int reg_tpsd_txmod_len ;
 int reg_tpsd_txmod_pos ;
 int xd_g_reg_tpsd_const ;
 int xd_g_reg_tpsd_txmod ;
 int xd_p_fec_super_frm_unit_15_8 ;
 int xd_p_fec_super_frm_unit_7_0 ;
 int xd_r_fec_vtb_ber_rdy ;
 int xd_r_fec_vtb_err_bit_cnt_15_8 ;
 int xd_r_fec_vtb_err_bit_cnt_23_16 ;
 int xd_r_fec_vtb_err_bit_cnt_7_0 ;

__attribute__((used)) static int af9005_get_pre_vit_err_bit_count(struct dvb_frontend *fe,
         u32 * pre_err_count,
         u32 * pre_bit_count)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 u8 temp, temp0, temp1, temp2;
 u32 super_frame_count, x, bits;
 int ret;

 ret =
     af9005_read_register_bits(state->d, xd_r_fec_vtb_ber_rdy,
          fec_vtb_ber_rdy_pos, fec_vtb_ber_rdy_len,
          &temp);
 if (ret)
  return ret;
 if (!temp) {
  deb_info("viterbi counter not ready\n");
  return 101;
 }
 ret =
     af9005_read_ofdm_register(state->d, xd_r_fec_vtb_err_bit_cnt_7_0,
          &temp0);
 if (ret)
  return ret;
 ret =
     af9005_read_ofdm_register(state->d, xd_r_fec_vtb_err_bit_cnt_15_8,
          &temp1);
 if (ret)
  return ret;
 ret =
     af9005_read_ofdm_register(state->d, xd_r_fec_vtb_err_bit_cnt_23_16,
          &temp2);
 if (ret)
  return ret;
 *pre_err_count = ((u32) temp2 << 16) + ((u32) temp1 << 8) + temp0;

 ret =
     af9005_read_ofdm_register(state->d, xd_p_fec_super_frm_unit_7_0,
          &temp0);
 if (ret)
  return ret;
 ret =
     af9005_read_ofdm_register(state->d, xd_p_fec_super_frm_unit_15_8,
          &temp1);
 if (ret)
  return ret;
 super_frame_count = ((u32) temp1 << 8) + temp0;
 if (super_frame_count == 0) {
  deb_info("super frame count 0\n");
  return 102;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_txmod,
          reg_tpsd_txmod_pos, reg_tpsd_txmod_len,
          &temp);
 if (ret)
  return ret;
 if (temp == 0) {

  x = 1512;
 } else if (temp == 1) {

  x = 6048;
 } else {
  err("Invalid fft mode");
  return -EINVAL;
 }


 ret =
     af9005_read_register_bits(state->d, xd_g_reg_tpsd_const,
          reg_tpsd_const_pos, reg_tpsd_const_len,
          &temp);
 if (ret)
  return ret;
 switch (temp) {
 case 0:
  bits = 2;
  break;
 case 1:
  bits = 4;
  break;
 case 2:
  bits = 6;
  break;
 default:
  err("invalid modulation mode");
  return -EINVAL;
 }
 *pre_bit_count = super_frame_count * 68 * 4 * x * bits;
 deb_info("PRE err count %d frame count %d bit count %d\n",
   *pre_err_count, super_frame_count, *pre_bit_count);
 return 0;
}
