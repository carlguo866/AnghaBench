; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_ssi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_ssi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@LMC_CTL_CARDTYPE_LMC1000 = common dso_local global i32 0, align 4
@LMC_MII17_SSI_CABLE_MASK = common dso_local global i32 0, align 4
@LMC_MII17_SSI_CABLE_SHIFT = common dso_local global i32 0, align 4
@LMC_GEP_SSI_TXCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @lmc_ssi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_ssi_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load i32, i32* @LMC_CTL_CARDTYPE_LMC1000, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %5, i32* %8, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = call i32 @lmc_mii_readreg(%struct.TYPE_7__* %9, i32 0, i32 17)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LMC_MII17_SSI_CABLE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @LMC_MII17_SSI_CABLE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @LMC_GEP_SSI_TXCLOCK, align 4
  %22 = call i32 @lmc_gpio_mkoutput(%struct.TYPE_7__* %20, i32 %21)
  ret void
}

declare dso_local i32 @lmc_mii_readreg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @lmc_gpio_mkoutput(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
