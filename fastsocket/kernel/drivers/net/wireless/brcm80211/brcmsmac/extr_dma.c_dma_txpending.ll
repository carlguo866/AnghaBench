; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txpending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_txpending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_txpending(%struct.dma_pub* %0) #0 {
  %2 = alloca %struct.dma_pub*, align 8
  %3 = alloca %struct.dma_info*, align 8
  store %struct.dma_pub* %0, %struct.dma_pub** %2, align 8
  %4 = load %struct.dma_pub*, %struct.dma_pub** %2, align 8
  %5 = bitcast %struct.dma_pub* %4 to %struct.dma_info*
  store %struct.dma_info* %5, %struct.dma_info** %3, align 8
  %6 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %7 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %8 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %11 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntxdactive(%struct.dma_info* %6, i32 %9, i32 %12)
  ret i32 %13
}

declare dso_local i32 @ntxdactive(%struct.dma_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
