
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int verbose; } ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;


 int DVBS2_FEC_LOCK ;
 int DVBS2_FEC_NOLOCK ;
 int FE_DEBUG ;
 int dprintk (int ,int ,int,char*) ;
 int msleep (int) ;
 int stb0899_dvbs2_get_data_lock (struct stb0899_state*,int) ;

__attribute__((used)) static enum stb0899_status stb0899_dvbs2_get_fec_status(struct stb0899_state *state, int timeout)
{
 int time = 0, Locked;

 do {
  Locked = stb0899_dvbs2_get_data_lock(state, 1);
  time++;
  msleep(1);

 } while ((!Locked) && (time < timeout));

 if (Locked) {
  dprintk(state->verbose, FE_DEBUG, 1, "---------->DVB-S2 FEC LOCK !");
  return DVBS2_FEC_LOCK;
 } else {
  return DVBS2_FEC_NOLOCK;
 }
}
