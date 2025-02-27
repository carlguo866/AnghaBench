; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_enable_counter_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_enable_counter_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_pmu_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PMU_PMINTENSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_pmu_dev*, i32)* @xgene_pmu_enable_counter_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_pmu_enable_counter_int(%struct.xgene_pmu_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_pmu_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgene_pmu_dev* %0, %struct.xgene_pmu_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %7 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PMU_PMINTENSET, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %3, align 8
  %20 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PMU_PMINTENSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %18, i64 %25)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
