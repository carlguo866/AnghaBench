
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void stub1 (void*,void*,void*,void*,void*,void*,void*,void*) ;

__attribute__((used)) static inline void r_run_call8(void *fcn, void *arg1, void *arg2, void *arg3, void *arg4, void *arg5,
 void *arg6, void *arg7, void *arg8) {
 ((void (*)(void *, void *, void *, void *, void *, void *, void *, void *))(fcn))
  (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}
