; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"startup: pid = %d\00", align 1
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error allocating event port: %s\00", align 1
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_startup(%struct.inf* %0, i32 %1) #0 {
  %3 = alloca %struct.inf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.inf* %0, %struct.inf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inf*, %struct.inf** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @inf_debug(%struct.inf* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.inf*, %struct.inf** %3, align 8
  %10 = call i32 @inf_cleanup(%struct.inf* %9)
  %11 = call i32 (...) @mach_task_self()
  %12 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %13 = load %struct.inf*, %struct.inf** %3, align 8
  %14 = getelementptr inbounds %struct.inf, %struct.inf* %13, i32 0, i32 0
  %15 = call i64 @mach_port_allocate(i32 %11, i32 %12, i32* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @safe_strerror(i64 %19)
  %21 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = call i32 (...) @mach_task_self()
  %24 = load %struct.inf*, %struct.inf** %3, align 8
  %25 = getelementptr inbounds %struct.inf, %struct.inf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inf*, %struct.inf** %3, align 8
  %28 = getelementptr inbounds %struct.inf, %struct.inf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %31 = call i32 @mach_port_insert_right(i32 %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.inf*, %struct.inf** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @inf_set_pid(%struct.inf* %32, i32 %33)
  ret void
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*, i32) #1

declare dso_local i32 @inf_cleanup(%struct.inf*) #1

declare dso_local i64 @mach_port_allocate(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @safe_strerror(i64) #1

declare dso_local i32 @mach_port_insert_right(i32, i32, i32, i32) #1

declare dso_local i32 @inf_set_pid(%struct.inf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
