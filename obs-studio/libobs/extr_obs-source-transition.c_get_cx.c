
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ transition_actual_cx; scalar_t__ transition_cx; } ;
typedef TYPE_1__ obs_source_t ;



__attribute__((used)) static inline uint32_t get_cx(obs_source_t *tr)
{
 return tr->transition_cx ? tr->transition_cx : tr->transition_actual_cx;
}
