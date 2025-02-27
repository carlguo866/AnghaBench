; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_force_clear_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_force_clear_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@next_to_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*)* @hns3_force_clear_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_force_clear_rx_ring(%struct.hns3_enet_ring* %0) #0 {
  %2 = alloca %struct.hns3_enet_ring*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %2, align 8
  br label %3

3:                                                ; preds = %40, %1
  %4 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %5 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %8 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %3
  %12 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %13 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %16 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %11
  %23 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %24 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %28 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = call i32 @hns3_unmap_buffer(%struct.hns3_enet_ring* %23, %struct.TYPE_2__* %30)
  %32 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %33 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %36 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %22, %11
  %41 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %42 = load i32, i32* @next_to_use, align 4
  %43 = call i32 @ring_ptr_move_fw(%struct.hns3_enet_ring* %41, i32 %42)
  br label %3

44:                                               ; preds = %3
  ret void
}

declare dso_local i32 @hns3_unmap_buffer(%struct.hns3_enet_ring*, %struct.TYPE_2__*) #1

declare dso_local i32 @ring_ptr_move_fw(%struct.hns3_enet_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
