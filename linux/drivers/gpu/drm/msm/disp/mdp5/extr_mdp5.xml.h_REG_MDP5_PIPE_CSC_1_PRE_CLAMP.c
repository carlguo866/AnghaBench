
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int __offset_PIPE (int) ;

__attribute__((used)) static inline uint32_t REG_MDP5_PIPE_CSC_1_PRE_CLAMP(enum mdp5_pipe i0, uint32_t i1) { return 0x00000334 + __offset_PIPE(i0) + 0x4*i1; }
