; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hppa_disable_syscall_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hppa_disable_syscall_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TT_PROC_GET_EVENT_MASK = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ttrace\00", align 1
@TTEVT_SYSCALL_ENTRY = common dso_local global i32 0, align 4
@TTEVT_SYSCALL_RETURN = common dso_local global i32 0, align 4
@TT_PROC_SET_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hppa_disable_syscall_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hppa_disable_syscall_events(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @TT_PROC_GET_EVENT_MASK, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ptrtoint %struct.TYPE_2__* %4 to i32
  %8 = load i32, i32* @TT_NIL, align 4
  %9 = call i32 @call_ttrace(i32 %5, i32 %6, i32 %7, i32 4, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @errno, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* @TTEVT_SYSCALL_ENTRY, align 4
  %16 = xor i32 %15, -1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @TTEVT_SYSCALL_RETURN, align 4
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @TT_PROC_SET_EVENT_MASK, align 4
  %26 = load i32, i32* %2, align 4
  %27 = ptrtoint %struct.TYPE_2__* %4 to i32
  %28 = load i32, i32* @TT_NIL, align 4
  %29 = call i32 @call_ttrace(i32 %25, i32 %26, i32 %27, i32 4, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i64, i64* @errno, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32 @call_ttrace(i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
