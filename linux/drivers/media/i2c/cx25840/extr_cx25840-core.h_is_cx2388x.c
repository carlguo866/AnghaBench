
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25840_state {scalar_t__ id; } ;


 scalar_t__ CX23885_AV ;
 scalar_t__ CX23887_AV ;
 scalar_t__ CX23888_AV ;

__attribute__((used)) static inline bool is_cx2388x(struct cx25840_state *state)
{
 return state->id == CX23885_AV ||
        state->id == CX23887_AV ||
        state->id == CX23888_AV;
}
