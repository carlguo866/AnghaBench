; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_armv7.c_armv7_stop_pmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_armv7.c_armv7_stop_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.pmc_hw* }
%struct.pmc_hw = type { %struct.pmc* }
%struct.pmc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@armv7_pcpu = common dso_local global %struct.TYPE_6__** null, align 8
@PMC_EV_CPU_CYCLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @armv7_stop_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv7_stop_pmc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc_hw*, align 8
  %6 = alloca %struct.pmc*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @armv7_pcpu, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %8, i64 %10
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.pmc_hw*, %struct.pmc_hw** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %14, i64 %16
  store %struct.pmc_hw* %17, %struct.pmc_hw** %5, align 8
  %18 = load %struct.pmc_hw*, %struct.pmc_hw** %5, align 8
  %19 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %18, i32 0, i32 0
  %20 = load %struct.pmc*, %struct.pmc** %19, align 8
  store %struct.pmc* %20, %struct.pmc** %6, align 8
  %21 = load %struct.pmc*, %struct.pmc** %6, align 8
  %22 = getelementptr inbounds %struct.pmc, %struct.pmc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @PMC_EV_CPU_CYCLES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 31, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @armv7_counter_disable(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @armv7_interrupt_disable(i32 %33)
  ret i32 0
}

declare dso_local i32 @armv7_counter_disable(i32) #1

declare dso_local i32 @armv7_interrupt_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
