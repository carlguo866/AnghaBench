; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_hssi_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_hssi_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)* }

@LMC_MII16_LED_ALL = common dso_local global i32 0, align 4
@LMC_LINK_DOWN = common dso_local global i32 0, align 4
@LMC_CTL_CLOCK_SOURCE_EXT = common dso_local global i32 0, align 4
@LMC_CTL_CRC_LENGTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @lmc_hssi_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_hssi_default(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load i32, i32* @LMC_MII16_LED_ALL, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load i32, i32* @LMC_LINK_DOWN, align 4
  %13 = call i32 %10(%struct.TYPE_8__* %11, i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i32, i32* @LMC_CTL_CLOCK_SOURCE_EXT, align 4
  %21 = call i32 %18(%struct.TYPE_8__* %19, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = load i32, i32* @LMC_CTL_CRC_LENGTH_16, align 4
  %29 = call i32 %26(%struct.TYPE_8__* %27, i32 %28)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
