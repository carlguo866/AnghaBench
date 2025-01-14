; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pte_processInitialized = common dso_local global i32 0, align 4
@PTE_TRUE = common dso_local global i32 0, align 4
@pte_selfThreadKey = common dso_local global i32 0, align 4
@pte_cleanupKey = common dso_local global i32 0, align 4
@pte_thread_reuse_lock = common dso_local global i32 0, align 4
@pte_mutex_test_init_lock = common dso_local global i32 0, align 4
@pte_cond_list_lock = common dso_local global i32 0, align 4
@pte_cond_test_init_lock = common dso_local global i32 0, align 4
@pte_rwlock_test_init_lock = common dso_local global i32 0, align 4
@pte_spinlock_test_init_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @pte_processInitialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @PTE_TRUE, align 4
  store i32 %5, i32* %1, align 4
  br label %24

6:                                                ; preds = %0
  %7 = load i32, i32* @PTE_TRUE, align 4
  store i32 %7, i32* @pte_processInitialized, align 4
  %8 = call i32 (...) @pte_osInit()
  %9 = call i64 @pthread_key_create(i32* @pte_selfThreadKey, i32* null)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = call i64 @pthread_key_create(i32* @pte_cleanupKey, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %6
  %15 = call i32 (...) @pthread_terminate()
  br label %16

16:                                               ; preds = %14, %11
  %17 = call i32 @pte_osMutexCreate(i32* @pte_thread_reuse_lock)
  %18 = call i32 @pte_osMutexCreate(i32* @pte_mutex_test_init_lock)
  %19 = call i32 @pte_osMutexCreate(i32* @pte_cond_list_lock)
  %20 = call i32 @pte_osMutexCreate(i32* @pte_cond_test_init_lock)
  %21 = call i32 @pte_osMutexCreate(i32* @pte_rwlock_test_init_lock)
  %22 = call i32 @pte_osMutexCreate(i32* @pte_spinlock_test_init_lock)
  %23 = load i32, i32* @pte_processInitialized, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %16, %4
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @pte_osInit(...) #1

declare dso_local i64 @pthread_key_create(i32*, i32*) #1

declare dso_local i32 @pthread_terminate(...) #1

declare dso_local i32 @pte_osMutexCreate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
