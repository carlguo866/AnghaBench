; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_set_clock(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ult i32 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %27 = call i32 @mmc_set_ios(%struct.mmc_host* %26)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_set_ios(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
