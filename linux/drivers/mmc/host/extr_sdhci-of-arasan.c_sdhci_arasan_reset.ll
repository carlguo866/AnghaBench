; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_arasan_data = type { i32 }

@SDHCI_ARASAN_QUIRK_FORCE_CDTEST = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CTRL_CDTEST_INS = common dso_local global i32 0, align 4
@SDHCI_CTRL_CDTEST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_arasan_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_arasan_reset(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_arasan_data*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %6, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %11 = call %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_arasan_data* %11, %struct.sdhci_arasan_data** %7, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @sdhci_reset(%struct.sdhci_host* %12, i32 %13)
  %15 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %7, align 8
  %16 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SDHCI_ARASAN_QUIRK_FORCE_CDTEST, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %24 = call i32 @sdhci_readb(%struct.sdhci_host* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @SDHCI_CTRL_CDTEST_INS, align 4
  %26 = load i32, i32* @SDHCI_CTRL_CDTEST_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %33 = call i32 @sdhci_writeb(%struct.sdhci_host* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %2
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
