; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma64_dd_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma64_dd_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma64desc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma64desc*)* @dma64_dd_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma64_dd_parity(%struct.dma64desc* %0) #0 {
  %2 = alloca %struct.dma64desc*, align 8
  store %struct.dma64desc* %0, %struct.dma64desc** %2, align 8
  %3 = load %struct.dma64desc*, %struct.dma64desc** %2, align 8
  %4 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dma64desc*, %struct.dma64desc** %2, align 8
  %7 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = xor i32 %5, %8
  %10 = load %struct.dma64desc*, %struct.dma64desc** %2, align 8
  %11 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %9, %12
  %14 = load %struct.dma64desc*, %struct.dma64desc** %2, align 8
  %15 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %13, %16
  %18 = call i32 @parity32(i32 %17)
  ret i32 %18
}

declare dso_local i32 @parity32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
