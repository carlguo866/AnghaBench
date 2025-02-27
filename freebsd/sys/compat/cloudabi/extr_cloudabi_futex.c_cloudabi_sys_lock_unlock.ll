; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_sys_lock_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_sys_lock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_lock_unlock_args = type { i32, i32 }
%struct.futex_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_lock_unlock(%struct.thread* %0, %struct.cloudabi_sys_lock_unlock_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_lock_unlock_args*, align 8
  %6 = alloca %struct.futex_lock*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_lock_unlock_args* %1, %struct.cloudabi_sys_lock_unlock_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.cloudabi_sys_lock_unlock_args*, %struct.cloudabi_sys_lock_unlock_args** %5, align 8
  %10 = getelementptr inbounds %struct.cloudabi_sys_lock_unlock_args, %struct.cloudabi_sys_lock_unlock_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cloudabi_sys_lock_unlock_args*, %struct.cloudabi_sys_lock_unlock_args** %5, align 8
  %13 = getelementptr inbounds %struct.cloudabi_sys_lock_unlock_args, %struct.cloudabi_sys_lock_unlock_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @futex_lock_lookup(%struct.thread* %8, i32 %11, i32 %14, %struct.futex_lock** %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.futex_lock*, %struct.futex_lock** %6, align 8
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = load %struct.cloudabi_sys_lock_unlock_args*, %struct.cloudabi_sys_lock_unlock_args** %5, align 8
  %24 = getelementptr inbounds %struct.cloudabi_sys_lock_unlock_args, %struct.cloudabi_sys_lock_unlock_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @futex_lock_unlock(%struct.futex_lock* %21, %struct.thread* %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.futex_lock*, %struct.futex_lock** %6, align 8
  %28 = call i32 @futex_lock_release(%struct.futex_lock* %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @futex_lock_lookup(%struct.thread*, i32, i32, %struct.futex_lock**) #1

declare dso_local i32 @futex_lock_unlock(%struct.futex_lock*, %struct.thread*, i32) #1

declare dso_local i32 @futex_lock_release(%struct.futex_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
