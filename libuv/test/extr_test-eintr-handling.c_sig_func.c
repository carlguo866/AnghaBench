
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_signal_t ;


 int uv_signal_stop (int *) ;

__attribute__((used)) static void sig_func(uv_signal_t* handle, int signum) {
  uv_signal_stop(handle);
}
