; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@MACH_PORT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_cleanup(%struct.inf* %0) #0 {
  %2 = alloca %struct.inf*, align 8
  store %struct.inf* %0, %struct.inf** %2, align 8
  %3 = load %struct.inf*, %struct.inf** %2, align 8
  %4 = call i32 @inf_debug(%struct.inf* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.inf*, %struct.inf** %2, align 8
  %6 = call i32 @inf_clear_wait(%struct.inf* %5)
  %7 = load %struct.inf*, %struct.inf** %2, align 8
  %8 = call i32 @inf_set_pid(%struct.inf* %7, i32 -1)
  %9 = load %struct.inf*, %struct.inf** %2, align 8
  %10 = getelementptr inbounds %struct.inf, %struct.inf* %9, i32 0, i32 7
  store i64 0, i64* %10, align 8
  %11 = load %struct.inf*, %struct.inf** %2, align 8
  %12 = getelementptr inbounds %struct.inf, %struct.inf* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.inf*, %struct.inf** %2, align 8
  %14 = getelementptr inbounds %struct.inf, %struct.inf* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.inf*, %struct.inf** %2, align 8
  %16 = getelementptr inbounds %struct.inf, %struct.inf* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.inf*, %struct.inf** %2, align 8
  %18 = getelementptr inbounds %struct.inf, %struct.inf* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.inf*, %struct.inf** %2, align 8
  %20 = getelementptr inbounds %struct.inf, %struct.inf* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.inf*, %struct.inf** %2, align 8
  %22 = getelementptr inbounds %struct.inf, %struct.inf* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.inf*, %struct.inf** %2, align 8
  %24 = getelementptr inbounds %struct.inf, %struct.inf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = call i32 (...) @mach_task_self()
  %29 = load %struct.inf*, %struct.inf** %2, align 8
  %30 = getelementptr inbounds %struct.inf, %struct.inf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @mach_port_destroy(i32 %28, i64 %31)
  %33 = load i64, i64* @MACH_PORT_NULL, align 8
  %34 = load %struct.inf*, %struct.inf** %2, align 8
  %35 = getelementptr inbounds %struct.inf, %struct.inf* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*) #1

declare dso_local i32 @inf_clear_wait(%struct.inf*) #1

declare dso_local i32 @inf_set_pid(%struct.inf*, i32) #1

declare dso_local i32 @mach_port_destroy(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
