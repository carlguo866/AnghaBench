; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_corerev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_sb_corerev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_chip_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.brcmf_core = type { i32, i32 }

@sbidhigh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_chip_priv*, %struct.brcmf_core*)* @brcmf_chip_sb_corerev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_chip_sb_corerev(%struct.brcmf_chip_priv* %0, %struct.brcmf_core* %1) #0 {
  %3 = alloca %struct.brcmf_chip_priv*, align 8
  %4 = alloca %struct.brcmf_core*, align 8
  %5 = alloca i32, align 4
  store %struct.brcmf_chip_priv* %0, %struct.brcmf_chip_priv** %3, align 8
  store %struct.brcmf_core* %1, %struct.brcmf_core** %4, align 8
  %6 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %12 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %15 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @sbidhigh, align 4
  %18 = call i32 @CORE_SB(i32 %16, i32 %17)
  %19 = call i32 %10(i32 %13, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @SBCOREREV(i32 %20)
  %22 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %23 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @CORE_SB(i32, i32) #1

declare dso_local i32 @SBCOREREV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
