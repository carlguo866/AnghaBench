
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int deci; int csel; int rsel; int master_clk; } ;



__attribute__((used)) static void smrt_info_get(struct mb86a16_state *state, int rate)
{
 if (rate >= 37501) {
  state->deci = 0; state->csel = 0; state->rsel = 0;
 } else if (rate >= 30001) {
  state->deci = 0; state->csel = 0; state->rsel = 1;
 } else if (rate >= 26251) {
  state->deci = 0; state->csel = 1; state->rsel = 0;
 } else if (rate >= 22501) {
  state->deci = 0; state->csel = 1; state->rsel = 1;
 } else if (rate >= 18751) {
  state->deci = 1; state->csel = 0; state->rsel = 0;
 } else if (rate >= 15001) {
  state->deci = 1; state->csel = 0; state->rsel = 1;
 } else if (rate >= 13126) {
  state->deci = 1; state->csel = 1; state->rsel = 0;
 } else if (rate >= 11251) {
  state->deci = 1; state->csel = 1; state->rsel = 1;
 } else if (rate >= 9376) {
  state->deci = 2; state->csel = 0; state->rsel = 0;
 } else if (rate >= 7501) {
  state->deci = 2; state->csel = 0; state->rsel = 1;
 } else if (rate >= 6563) {
  state->deci = 2; state->csel = 1; state->rsel = 0;
 } else if (rate >= 5626) {
  state->deci = 2; state->csel = 1; state->rsel = 1;
 } else if (rate >= 4688) {
  state->deci = 3; state->csel = 0; state->rsel = 0;
 } else if (rate >= 3751) {
  state->deci = 3; state->csel = 0; state->rsel = 1;
 } else if (rate >= 3282) {
  state->deci = 3; state->csel = 1; state->rsel = 0;
 } else if (rate >= 2814) {
  state->deci = 3; state->csel = 1; state->rsel = 1;
 } else if (rate >= 2344) {
  state->deci = 4; state->csel = 0; state->rsel = 0;
 } else if (rate >= 1876) {
  state->deci = 4; state->csel = 0; state->rsel = 1;
 } else if (rate >= 1641) {
  state->deci = 4; state->csel = 1; state->rsel = 0;
 } else if (rate >= 1407) {
  state->deci = 4; state->csel = 1; state->rsel = 1;
 } else if (rate >= 1172) {
  state->deci = 5; state->csel = 0; state->rsel = 0;
 } else if (rate >= 939) {
  state->deci = 5; state->csel = 0; state->rsel = 1;
 } else if (rate >= 821) {
  state->deci = 5; state->csel = 1; state->rsel = 0;
 } else {
  state->deci = 5; state->csel = 1; state->rsel = 1;
 }

 if (state->csel == 0)
  state->master_clk = 92000;
 else
  state->master_clk = 61333;

}
