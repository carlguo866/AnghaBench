; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_get_tx_delay.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_get_tx_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@XBUFFSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.omap_mcbsp*)* @omap_mcbsp_get_tx_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap_mcbsp_get_tx_delay(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca %struct.omap_mcbsp*, align 8
  %3 = alloca i64, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %2, align 8
  %4 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %5 = load i32, i32* @XBUFFSTAT, align 4
  %6 = call i64 @MCBSP_READ(%struct.omap_mcbsp* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %8 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %11, %12
  ret i64 %13
}

declare dso_local i64 @MCBSP_READ(%struct.omap_mcbsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
