; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tmsdev_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tmsdev_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_local = type { i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmsdev_term(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_local* @netdev_priv(%struct.net_device* %4)
  store %struct.net_local* %5, %struct.net_local** %3, align 8
  %6 = load %struct.net_local*, %struct.net_local** %3, align 8
  %7 = getelementptr inbounds %struct.net_local, %struct.net_local* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.net_local*, %struct.net_local** %3, align 8
  %10 = getelementptr inbounds %struct.net_local, %struct.net_local* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %13 = call i32 @dma_unmap_single(i32 %8, i32 %11, i32 8, i32 %12)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
