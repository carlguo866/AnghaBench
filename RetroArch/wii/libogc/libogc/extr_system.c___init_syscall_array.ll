; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___init_syscall_array.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___init_syscall_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__libogc_sbrk_r = common dso_local global i32 0, align 4
@__syscalls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@__libogc_lock_init = common dso_local global i32 0, align 4
@__libogc_lock_close = common dso_local global i32 0, align 4
@__libogc_lock_release = common dso_local global i32 0, align 4
@__libogc_lock_acquire = common dso_local global i32 0, align 4
@__libogc_malloc_lock = common dso_local global i32 0, align 4
@__libogc_malloc_unlock = common dso_local global i32 0, align 4
@__libogc_exit = common dso_local global i32 0, align 4
@__libogc_gettod_r = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__init_syscall_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__init_syscall_array() #0 {
  %1 = load i32, i32* @__libogc_sbrk_r, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 8), align 4
  %2 = load i32, i32* @__libogc_lock_init, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 7), align 4
  %3 = load i32, i32* @__libogc_lock_close, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 6), align 4
  %4 = load i32, i32* @__libogc_lock_release, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 5), align 4
  %5 = load i32, i32* @__libogc_lock_acquire, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 4), align 4
  %6 = load i32, i32* @__libogc_malloc_lock, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 3), align 4
  %7 = load i32, i32* @__libogc_malloc_unlock, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 2), align 4
  %8 = load i32, i32* @__libogc_exit, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 1), align 4
  %9 = load i32, i32* @__libogc_gettod_r, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__syscalls, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
