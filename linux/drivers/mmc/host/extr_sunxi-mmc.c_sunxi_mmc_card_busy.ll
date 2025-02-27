; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_card_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_card_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sunxi_mmc_host = type { i32 }

@REG_STAS = common dso_local global i32 0, align 4
@SDXC_CARD_DATA_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @sunxi_mmc_card_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_card_busy(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host* %4)
  store %struct.sunxi_mmc_host* %5, %struct.sunxi_mmc_host** %3, align 8
  %6 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %7 = load i32, i32* @REG_STAS, align 4
  %8 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %6, i32 %7)
  %9 = load i32, i32* @SDXC_CARD_DATA_BUSY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
