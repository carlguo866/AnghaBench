
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vp702x_fe_state {int dummy; } ;
struct dvb_frontend {struct vp702x_fe_state* demodulator_priv; } ;


 int vp702x_fe_refresh_state (struct vp702x_fe_state*) ;

__attribute__((used)) static int vp702x_fe_read_ber(struct dvb_frontend* fe, u32 *ber)
{
 struct vp702x_fe_state *st = fe->demodulator_priv;
 vp702x_fe_refresh_state(st);
 *ber = 0;
 return 0;
}
