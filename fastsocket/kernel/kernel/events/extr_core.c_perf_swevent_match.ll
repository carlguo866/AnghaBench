; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@PERF_TYPE_TRACEPOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32, i64, %struct.perf_sample_data*, %struct.pt_regs*)* @perf_swevent_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_swevent_match(%struct.perf_event* %0, i32 %1, i64 %2, %struct.perf_sample_data* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.perf_sample_data*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.perf_sample_data* %3, %struct.perf_sample_data** %10, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %11, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %48

19:                                               ; preds = %5
  %20 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %30 = call i64 @perf_exclude_event(%struct.perf_event* %28, %struct.pt_regs* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %48

33:                                               ; preds = %27
  %34 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @PERF_TYPE_TRACEPOINT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %43 = load %struct.perf_sample_data*, %struct.perf_sample_data** %10, align 8
  %44 = call i32 @perf_tp_event_match(%struct.perf_event* %42, %struct.perf_sample_data* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %48

47:                                               ; preds = %41, %33
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %46, %32, %26, %18
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @perf_exclude_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i32 @perf_tp_event_match(%struct.perf_event*, %struct.perf_sample_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
