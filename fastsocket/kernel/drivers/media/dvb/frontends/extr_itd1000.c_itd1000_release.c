
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int * tuner_priv; } ;


 int kfree (int *) ;

__attribute__((used)) static int itd1000_release(struct dvb_frontend *fe)
{
 kfree(fe->tuner_priv);
 fe->tuner_priv = ((void*)0);
 return 0;
}
