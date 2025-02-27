; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_ack_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra210.c_tegra210_bpmp_ack_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra210_bpmp* }
%struct.tegra210_bpmp = type { i64 }

@SET_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_channel*)* @tegra210_bpmp_ack_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_bpmp_ack_request(%struct.tegra_bpmp_channel* %0) #0 {
  %2 = alloca %struct.tegra_bpmp_channel*, align 8
  %3 = alloca %struct.tegra210_bpmp*, align 8
  store %struct.tegra_bpmp_channel* %0, %struct.tegra_bpmp_channel** %2, align 8
  %4 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %7, align 8
  store %struct.tegra210_bpmp* %8, %struct.tegra210_bpmp** %3, align 8
  %9 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @SL_QUED(i32 %11)
  %13 = load %struct.tegra210_bpmp*, %struct.tegra210_bpmp** %3, align 8
  %14 = getelementptr inbounds %struct.tegra210_bpmp, %struct.tegra210_bpmp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SET_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @__raw_writel(i32 %12, i64 %17)
  ret i32 0
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @SL_QUED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
