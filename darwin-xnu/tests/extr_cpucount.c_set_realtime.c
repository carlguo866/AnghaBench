
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {scalar_t__ preemptible; void* computation; void* constraint; void* period; } ;
typedef TYPE_1__ thread_time_constraint_policy_data_t ;
typedef int thread_policy_t ;
typedef int pthread_t ;
typedef int mach_port_t ;
typedef int kern_return_t ;


 int THREAD_TIME_CONSTRAINT_POLICY ;
 int THREAD_TIME_CONSTRAINT_POLICY_COUNT ;
 int T_ASSERT_MACH_SUCCESS (int ,char*) ;
 int T_ASSERT_NOTNULL (int ,char*) ;
 int T_QUIET ;
 scalar_t__ nanos_to_abs (int) ;
 int pthread_mach_thread_np (int ) ;
 int thread_policy_set (int ,int ,int ,int ) ;

__attribute__((used)) static void set_realtime(pthread_t thread) {
 kern_return_t kr;
 thread_time_constraint_policy_data_t pol;

 mach_port_t target_thread = pthread_mach_thread_np(thread);
 T_QUIET; T_ASSERT_NOTNULL(target_thread, "pthread_mach_thread_np");


 pol.period = (uint32_t)nanos_to_abs(1000000000);
 pol.constraint = (uint32_t)nanos_to_abs(100000000);
 pol.computation = (uint32_t)nanos_to_abs(10000000);

 pol.preemptible = 0;
 kr = thread_policy_set(target_thread, THREAD_TIME_CONSTRAINT_POLICY, (thread_policy_t) &pol,
                        THREAD_TIME_CONSTRAINT_POLICY_COUNT);
 T_QUIET; T_ASSERT_MACH_SUCCESS(kr, "thread_policy_set(THREAD_TIME_CONSTRAINT_POLICY)");
}
