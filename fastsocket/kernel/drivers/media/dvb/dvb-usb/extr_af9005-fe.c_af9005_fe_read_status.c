
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int * release; } ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {scalar_t__ strong; int d; scalar_t__ opened; } ;
typedef int fe_status_t ;


 int ENODEV ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int af9005_led_control (int ,int) ;
 int af9005_read_register_bits (int ,int ,int ,int ,scalar_t__*) ;
 int agc_lock_len ;
 int agc_lock_pos ;
 int deb_info (char*,scalar_t__) ;
 int fd_tpsd_lock_len ;
 int fd_tpsd_lock_pos ;
 int mp2if_sync_byte_locked_pos ;
 int reg_strong_sginal_detected_len ;
 int reg_strong_sginal_detected_pos ;
 int xd_p_agc_lock ;
 int xd_p_fd_tpsd_lock ;
 int xd_p_reg_strong_sginal_detected ;
 int xd_r_mp2if_sync_byte_locked ;

__attribute__((used)) static int af9005_fe_read_status(struct dvb_frontend *fe, fe_status_t * stat)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 u8 temp;
 int ret;

 if (fe->ops.tuner_ops.release == ((void*)0))
  return -ENODEV;

 *stat = 0;
 ret = af9005_read_register_bits(state->d, xd_p_agc_lock,
     agc_lock_pos, agc_lock_len, &temp);
 if (ret)
  return ret;
 if (temp)
  *stat |= FE_HAS_SIGNAL;

 ret = af9005_read_register_bits(state->d, xd_p_fd_tpsd_lock,
     fd_tpsd_lock_pos, fd_tpsd_lock_len,
     &temp);
 if (ret)
  return ret;
 if (temp)
  *stat |= FE_HAS_CARRIER;

 ret = af9005_read_register_bits(state->d,
     xd_r_mp2if_sync_byte_locked,
     mp2if_sync_byte_locked_pos,
     mp2if_sync_byte_locked_pos, &temp);
 if (ret)
  return ret;
 if (temp)
  *stat |= FE_HAS_SYNC | FE_HAS_VITERBI | FE_HAS_LOCK;
 if (state->opened)
  af9005_led_control(state->d, *stat & FE_HAS_LOCK);

 ret =
     af9005_read_register_bits(state->d, xd_p_reg_strong_sginal_detected,
          reg_strong_sginal_detected_pos,
          reg_strong_sginal_detected_len, &temp);
 if (ret)
  return ret;
 if (temp != state->strong) {
  deb_info("adjust for strong signal %d\n", temp);
   state->strong = temp;
 }
 return 0;
}
