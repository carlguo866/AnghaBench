
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drxk_state* demodulator_priv; } ;
struct drxk_state {int fe_status; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int dprintk (int,char*) ;
 int drxk_get_stats (struct dvb_frontend*) ;

__attribute__((used)) static int drxk_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct drxk_state *state = fe->demodulator_priv;
 int rc;

 dprintk(1, "\n");

 rc = drxk_get_stats(fe);
 if (rc < 0)
  return rc;

 *status = state->fe_status;

 return 0;
}
