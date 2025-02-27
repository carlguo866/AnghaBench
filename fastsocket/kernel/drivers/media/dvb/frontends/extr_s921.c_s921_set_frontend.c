
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_state {int currentfreq; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {struct s921_state* demodulator_priv; } ;


 int dprintk (char*) ;
 int s921_pll_tune (struct dvb_frontend*,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int s921_set_frontend(struct dvb_frontend *fe,
 struct dvb_frontend_parameters *p)
{
 struct s921_state *state = fe->demodulator_priv;
 int rc;

 dprintk("\n");



 rc = s921_pll_tune(fe, p);
 if (rc < 0)
  return rc;

 state->currentfreq = p->frequency;

 return 0;
}
