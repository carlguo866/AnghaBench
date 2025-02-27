
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
typedef int s32 ;


 int CALIBRATE ;
 int DELPT ;
 int ar9003_hw_find_mag_approx (struct ath_hw*,int,int) ;
 int ar9003_hw_solve_iq_cal (struct ath_hw*,int,int,int,int,int,int,int,int,int*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;

__attribute__((used)) static bool ar9003_hw_calc_iq_corr(struct ath_hw *ah,
       s32 chain_idx,
       const s32 iq_res[],
       s32 iqc_coeff[])
{
 s32 i2_m_q2_a0_d0, i2_p_q2_a0_d0, iq_corr_a0_d0,
     i2_m_q2_a0_d1, i2_p_q2_a0_d1, iq_corr_a0_d1,
     i2_m_q2_a1_d0, i2_p_q2_a1_d0, iq_corr_a1_d0,
     i2_m_q2_a1_d1, i2_p_q2_a1_d1, iq_corr_a1_d1;
 s32 mag_a0_d0, mag_a1_d0, mag_a0_d1, mag_a1_d1,
     phs_a0_d0, phs_a1_d0, phs_a0_d1, phs_a1_d1,
     sin_2phi_1, cos_2phi_1,
     sin_2phi_2, cos_2phi_2;
 s32 mag_tx, phs_tx, mag_rx, phs_rx;
 s32 solved_eq[4], mag_corr_tx, phs_corr_tx, mag_corr_rx, phs_corr_rx,
     q_q_coff, q_i_coff;
 const s32 res_scale = 1 << 15;
 const s32 delpt_shift = 1 << 8;
 s32 mag1, mag2;
 struct ath_common *common = ath9k_hw_common(ah);

 i2_m_q2_a0_d0 = iq_res[0] & 0xfff;
 i2_p_q2_a0_d0 = (iq_res[0] >> 12) & 0xfff;
 iq_corr_a0_d0 = ((iq_res[0] >> 24) & 0xff) + ((iq_res[1] & 0xf) << 8);

 if (i2_m_q2_a0_d0 > 0x800)
  i2_m_q2_a0_d0 = -((0xfff - i2_m_q2_a0_d0) + 1);

 if (i2_p_q2_a0_d0 > 0x800)
  i2_p_q2_a0_d0 = -((0xfff - i2_p_q2_a0_d0) + 1);

 if (iq_corr_a0_d0 > 0x800)
  iq_corr_a0_d0 = -((0xfff - iq_corr_a0_d0) + 1);

 i2_m_q2_a0_d1 = (iq_res[1] >> 4) & 0xfff;
 i2_p_q2_a0_d1 = (iq_res[2] & 0xfff);
 iq_corr_a0_d1 = (iq_res[2] >> 12) & 0xfff;

 if (i2_m_q2_a0_d1 > 0x800)
  i2_m_q2_a0_d1 = -((0xfff - i2_m_q2_a0_d1) + 1);

 if (i2_p_q2_a0_d1 > 0x800)
  i2_p_q2_a0_d1 = -((0xfff - i2_p_q2_a0_d1) + 1);

 if (iq_corr_a0_d1 > 0x800)
  iq_corr_a0_d1 = -((0xfff - iq_corr_a0_d1) + 1);

 i2_m_q2_a1_d0 = ((iq_res[2] >> 24) & 0xff) + ((iq_res[3] & 0xf) << 8);
 i2_p_q2_a1_d0 = (iq_res[3] >> 4) & 0xfff;
 iq_corr_a1_d0 = iq_res[4] & 0xfff;

 if (i2_m_q2_a1_d0 > 0x800)
  i2_m_q2_a1_d0 = -((0xfff - i2_m_q2_a1_d0) + 1);

 if (i2_p_q2_a1_d0 > 0x800)
  i2_p_q2_a1_d0 = -((0xfff - i2_p_q2_a1_d0) + 1);

 if (iq_corr_a1_d0 > 0x800)
  iq_corr_a1_d0 = -((0xfff - iq_corr_a1_d0) + 1);

 i2_m_q2_a1_d1 = (iq_res[4] >> 12) & 0xfff;
 i2_p_q2_a1_d1 = ((iq_res[4] >> 24) & 0xff) + ((iq_res[5] & 0xf) << 8);
 iq_corr_a1_d1 = (iq_res[5] >> 4) & 0xfff;

 if (i2_m_q2_a1_d1 > 0x800)
  i2_m_q2_a1_d1 = -((0xfff - i2_m_q2_a1_d1) + 1);

 if (i2_p_q2_a1_d1 > 0x800)
  i2_p_q2_a1_d1 = -((0xfff - i2_p_q2_a1_d1) + 1);

 if (iq_corr_a1_d1 > 0x800)
  iq_corr_a1_d1 = -((0xfff - iq_corr_a1_d1) + 1);

 if ((i2_p_q2_a0_d0 == 0) || (i2_p_q2_a0_d1 == 0) ||
     (i2_p_q2_a1_d0 == 0) || (i2_p_q2_a1_d1 == 0)) {
  ath_dbg(common, CALIBRATE,
   "Divide by 0:\n"
   "a0_d0=%d\n"
   "a0_d1=%d\n"
   "a2_d0=%d\n"
   "a1_d1=%d\n",
   i2_p_q2_a0_d0, i2_p_q2_a0_d1,
   i2_p_q2_a1_d0, i2_p_q2_a1_d1);
  return 0;
 }

 mag_a0_d0 = (i2_m_q2_a0_d0 * res_scale) / i2_p_q2_a0_d0;
 phs_a0_d0 = (iq_corr_a0_d0 * res_scale) / i2_p_q2_a0_d0;

 mag_a0_d1 = (i2_m_q2_a0_d1 * res_scale) / i2_p_q2_a0_d1;
 phs_a0_d1 = (iq_corr_a0_d1 * res_scale) / i2_p_q2_a0_d1;

 mag_a1_d0 = (i2_m_q2_a1_d0 * res_scale) / i2_p_q2_a1_d0;
 phs_a1_d0 = (iq_corr_a1_d0 * res_scale) / i2_p_q2_a1_d0;

 mag_a1_d1 = (i2_m_q2_a1_d1 * res_scale) / i2_p_q2_a1_d1;
 phs_a1_d1 = (iq_corr_a1_d1 * res_scale) / i2_p_q2_a1_d1;


 sin_2phi_1 = (((mag_a0_d0 - mag_a0_d1) * delpt_shift) / DELPT);

 cos_2phi_1 = (((phs_a0_d1 - phs_a0_d0) * delpt_shift) / DELPT);

 sin_2phi_2 = (((mag_a1_d0 - mag_a1_d1) * delpt_shift) / DELPT);

 cos_2phi_2 = (((phs_a1_d1 - phs_a1_d0) * delpt_shift) / DELPT);





 mag1 = ar9003_hw_find_mag_approx(ah, cos_2phi_1, sin_2phi_1);
 mag2 = ar9003_hw_find_mag_approx(ah, cos_2phi_2, sin_2phi_2);

 if ((mag1 == 0) || (mag2 == 0)) {
  ath_dbg(common, CALIBRATE, "Divide by 0: mag1=%d, mag2=%d\n",
   mag1, mag2);
  return 0;
 }


 sin_2phi_1 = (sin_2phi_1 * res_scale / mag1);
 cos_2phi_1 = (cos_2phi_1 * res_scale / mag1);
 sin_2phi_2 = (sin_2phi_2 * res_scale / mag2);
 cos_2phi_2 = (cos_2phi_2 * res_scale / mag2);


 if (!ar9003_hw_solve_iq_cal(ah,
        sin_2phi_1, cos_2phi_1,
        sin_2phi_2, cos_2phi_2,
        mag_a0_d0, phs_a0_d0,
        mag_a1_d0,
        phs_a1_d0, solved_eq)) {
  ath_dbg(common, CALIBRATE,
   "Call to ar9003_hw_solve_iq_cal() failed\n");
  return 0;
 }

 mag_tx = solved_eq[0];
 phs_tx = solved_eq[1];
 mag_rx = solved_eq[2];
 phs_rx = solved_eq[3];

 ath_dbg(common, CALIBRATE,
  "chain %d: mag mismatch=%d phase mismatch=%d\n",
  chain_idx, mag_tx/res_scale, phs_tx/res_scale);

 if (res_scale == mag_tx) {
  ath_dbg(common, CALIBRATE,
   "Divide by 0: mag_tx=%d, res_scale=%d\n",
   mag_tx, res_scale);
  return 0;
 }


 mag_corr_tx = (mag_tx * res_scale) / (res_scale - mag_tx);
 phs_corr_tx = -phs_tx;

 q_q_coff = (mag_corr_tx * 128 / res_scale);
 q_i_coff = (phs_corr_tx * 256 / res_scale);

 ath_dbg(common, CALIBRATE, "tx chain %d: mag corr=%d  phase corr=%d\n",
  chain_idx, q_q_coff, q_i_coff);

 if (q_i_coff < -63)
  q_i_coff = -63;
 if (q_i_coff > 63)
  q_i_coff = 63;
 if (q_q_coff < -63)
  q_q_coff = -63;
 if (q_q_coff > 63)
  q_q_coff = 63;

 iqc_coeff[0] = (q_q_coff * 128) + q_i_coff;

 ath_dbg(common, CALIBRATE, "tx chain %d: iq corr coeff=%x\n",
  chain_idx, iqc_coeff[0]);

 if (-mag_rx == res_scale) {
  ath_dbg(common, CALIBRATE,
   "Divide by 0: mag_rx=%d, res_scale=%d\n",
   mag_rx, res_scale);
  return 0;
 }


 mag_corr_rx = (-mag_rx * res_scale) / (res_scale + mag_rx);
 phs_corr_rx = -phs_rx;

 q_q_coff = (mag_corr_rx * 128 / res_scale);
 q_i_coff = (phs_corr_rx * 256 / res_scale);

 ath_dbg(common, CALIBRATE, "rx chain %d: mag corr=%d  phase corr=%d\n",
  chain_idx, q_q_coff, q_i_coff);

 if (q_i_coff < -63)
  q_i_coff = -63;
 if (q_i_coff > 63)
  q_i_coff = 63;
 if (q_q_coff < -63)
  q_q_coff = -63;
 if (q_q_coff > 63)
  q_q_coff = 63;

 iqc_coeff[1] = (q_q_coff * 128) + q_i_coff;

 ath_dbg(common, CALIBRATE, "rx chain %d: iq corr coeff=%x\n",
  chain_idx, iqc_coeff[1]);

 return 1;
}
