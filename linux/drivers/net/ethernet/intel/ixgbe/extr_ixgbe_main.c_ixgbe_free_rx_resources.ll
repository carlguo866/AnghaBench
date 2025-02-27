; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32*, i32, i32, i32, i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_free_rx_resources(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca %struct.ixgbe_ring*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %2, align 8
  %3 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %4 = call i32 @ixgbe_clean_rx_ring(%struct.ixgbe_ring* %3)
  %5 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %5, i32 0, i32 6
  store i32* null, i32** %6, align 8
  %7 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %7, i32 0, i32 5
  %9 = call i32 @xdp_rxq_info_unreg(i32* %8)
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @vfree(i32* %12)
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dma_free_coherent(i32 %24, i32 %27, i32* %30, i32 %33)
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ixgbe_clean_rx_ring(%struct.ixgbe_ring*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
