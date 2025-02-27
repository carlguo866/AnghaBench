; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_release_bts_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_release_bts_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.debug_store = type { i64 }
%struct.TYPE_4__ = type { %struct.debug_store* }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @release_bts_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_bts_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.debug_store*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @cpu_hw_events, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.debug_store* @per_cpu(i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store %struct.debug_store* %7, %struct.debug_store** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %10 = load %struct.debug_store*, %struct.debug_store** %9, align 8
  store %struct.debug_store* %10, %struct.debug_store** %3, align 8
  %11 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %12 = icmp ne %struct.debug_store* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  br label %25

17:                                               ; preds = %13
  %18 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %19 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @kfree(i8* %21)
  %23 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %24 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.debug_store* @per_cpu(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
