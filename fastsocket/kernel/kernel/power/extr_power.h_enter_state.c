
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int ENOSYS ;

__attribute__((used)) static inline int enter_state(suspend_state_t state) { return -ENOSYS; }
