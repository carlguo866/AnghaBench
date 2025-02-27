; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_start_signal_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_start_signal_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.sdhci_host = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @xenon_start_signal_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_start_signal_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %8 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.sdhci_host* %8, %struct.sdhci_host** %6, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %10 = call i32 @xenon_enable_internal_clk(%struct.sdhci_host* %9)
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xenon_soc_pad_ctrl(%struct.sdhci_host* %11, i32 %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PTR_ERR(i32 %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %28 = call i32 @sdhci_start_signal_voltage_switch(%struct.mmc_host* %26, %struct.mmc_ios* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @xenon_enable_internal_clk(%struct.sdhci_host*) #1

declare dso_local i32 @xenon_soc_pad_ctrl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sdhci_start_signal_voltage_switch(%struct.mmc_host*, %struct.mmc_ios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
