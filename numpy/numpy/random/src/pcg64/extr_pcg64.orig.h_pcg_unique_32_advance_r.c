
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcg_state_32 {int state; } ;


 int PCG_DEFAULT_MULTIPLIER_32 ;
 int pcg_advance_lcg_32 (int ,int ,int ,int ) ;

inline void pcg_unique_32_advance_r(struct pcg_state_32 *rng, uint32_t delta) {
  rng->state = pcg_advance_lcg_32(rng->state, delta, PCG_DEFAULT_MULTIPLIER_32,
                                  (uint32_t)(((intptr_t)rng) | 1u));
}
