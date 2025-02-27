; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_dma_ring_info = type { i32, %struct.rocker_desc*, %struct.rocker_desc_info* }
%struct.rocker_desc = type { i64, i64 }
%struct.rocker_desc_info = type { i32, i32 }

@mapaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*, %struct.rocker_dma_ring_info*, i32)* @rocker_dma_ring_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_dma_ring_bufs_free(%struct.rocker* %0, %struct.rocker_dma_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.rocker_dma_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rocker_desc_info*, align 8
  %10 = alloca %struct.rocker_desc*, align 8
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.rocker_dma_ring_info* %1, %struct.rocker_dma_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rocker*, %struct.rocker** %4, align 8
  %12 = getelementptr inbounds %struct.rocker, %struct.rocker* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %50, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %17 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %22 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %21, i32 0, i32 2
  %23 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %23, i64 %25
  store %struct.rocker_desc_info* %26, %struct.rocker_desc_info** %9, align 8
  %27 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %5, align 8
  %28 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %27, i32 0, i32 1
  %29 = load %struct.rocker_desc*, %struct.rocker_desc** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.rocker_desc, %struct.rocker_desc* %29, i64 %31
  store %struct.rocker_desc* %32, %struct.rocker_desc** %10, align 8
  %33 = load %struct.rocker_desc*, %struct.rocker_desc** %10, align 8
  %34 = getelementptr inbounds %struct.rocker_desc, %struct.rocker_desc* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.rocker_desc*, %struct.rocker_desc** %10, align 8
  %36 = getelementptr inbounds %struct.rocker_desc, %struct.rocker_desc* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %9, align 8
  %39 = load i32, i32* @mapaddr, align 4
  %40 = call i32 @dma_unmap_addr(%struct.rocker_desc_info* %38, i32 %39)
  %41 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %9, align 8
  %42 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pci_unmap_single(%struct.pci_dev* %37, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %9, align 8
  %47 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kfree(i32 %48)
  br label %50

50:                                               ; preds = %20
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %14

53:                                               ; preds = %14
  ret void
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.rocker_desc_info*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
