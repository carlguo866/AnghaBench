; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_free_tx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_free_tx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_host_tx_ring* }
%struct.qlcnic_host_tx_ring = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_free_tx_rings(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %14, i64 %16
  store %struct.qlcnic_host_tx_ring* %17, %struct.qlcnic_host_tx_ring** %4, align 8
  %18 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %19 = icmp ne %struct.qlcnic_host_tx_ring* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @vfree(i32* %23)
  %25 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5

31:                                               ; preds = %5
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 1
  %34 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %33, align 8
  %35 = call i32 @kfree(%struct.qlcnic_host_tx_ring* %34)
  ret void
}

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(%struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
