; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_all_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_all_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore_signal_all_trap_args = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i32 0, align 4
@SEMAPHORE_SIGNAL_ALL = common dso_local global i32 0, align 4
@KERN_NOT_WAITING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @semaphore_signal_all_trap(%struct.semaphore_signal_all_trap_args* %0) #0 {
  %2 = alloca %struct.semaphore_signal_all_trap_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.semaphore_signal_all_trap_args* %0, %struct.semaphore_signal_all_trap_args** %2, align 8
  %6 = load %struct.semaphore_signal_all_trap_args*, %struct.semaphore_signal_all_trap_args** %2, align 8
  %7 = getelementptr inbounds %struct.semaphore_signal_all_trap_args, %struct.semaphore_signal_all_trap_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @port_name_to_semaphore(i32 %9, i32* %4)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @KERN_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @THREAD_NULL, align 4
  %17 = load i32, i32* @SEMAPHORE_SIGNAL_ALL, align 4
  %18 = call i64 @semaphore_signal_internal(i32 %15, i32 %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @semaphore_dereference(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @KERN_NOT_WAITING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %24, %14
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i64 @port_name_to_semaphore(i32, i32*) #1

declare dso_local i64 @semaphore_signal_internal(i32, i32, i32) #1

declare dso_local i32 @semaphore_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
