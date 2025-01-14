; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_deadman.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_deadman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64 }

@dtrace_anon = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@dtrace_deadman_user = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@dtrace_deadman_interval = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dtrace_state_deadman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_state_deadman(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = call i32 (...) @dtrace_sync()
  %8 = call i32 (...) @dtrace_debug_output()
  %9 = call i64 (...) @dtrace_gethrtime()
  store i64 %9, i64* %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dtrace_anon, i32 0, i32 0), align 8
  %12 = icmp ne %struct.TYPE_4__* %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i64, i64* @dtrace_deadman_user, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %39

22:                                               ; preds = %13, %1
  %23 = load i64, i64* @INT64_MAX, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = call i32 (...) @dtrace_membar_producer()
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* @hz, align 4
  %33 = load i32, i32* @dtrace_deadman_interval, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @NANOSEC, align 4
  %36 = sdiv i32 %34, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = call i32 @callout_reset(i32* %31, i32 %36, void (i8*)* @dtrace_state_deadman, %struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @dtrace_sync(...) #1

declare dso_local i32 @dtrace_debug_output(...) #1

declare dso_local i64 @dtrace_gethrtime(...) #1

declare dso_local i32 @dtrace_membar_producer(...) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
