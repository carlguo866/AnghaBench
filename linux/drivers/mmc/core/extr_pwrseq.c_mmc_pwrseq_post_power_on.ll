; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq.c_mmc_pwrseq_post_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq.c_mmc_pwrseq_post_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.mmc_pwrseq* }
%struct.mmc_pwrseq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_pwrseq_post_power_on(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_pwrseq*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %5, align 8
  store %struct.mmc_pwrseq* %6, %struct.mmc_pwrseq** %3, align 8
  %7 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %3, align 8
  %8 = icmp ne %struct.mmc_pwrseq* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_pwrseq, %struct.mmc_pwrseq* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %13, align 8
  %15 = icmp ne i32 (%struct.mmc_host*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_pwrseq, %struct.mmc_pwrseq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %20, align 8
  %22 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %23 = call i32 %21(%struct.mmc_host* %22)
  br label %24

24:                                               ; preds = %16, %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
