; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.uli526x_board_info = type { i32, i32, i32, i32, i32, i32 }

@DESC_ALL_CNT = common dso_local global i32 0, align 4
@TX_BUF_ALLOC = common dso_local global i32 0, align 4
@TX_DESC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @uli526x_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.uli526x_board_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.uli526x_board_info* @netdev_priv(%struct.net_device* %7)
  store %struct.uli526x_board_info* %8, %struct.uli526x_board_info** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %13 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_iounmap(%struct.pci_dev* %11, i32 %14)
  %16 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %17 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DESC_ALL_CNT, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = add i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %25 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %28 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_free_consistent(i32 %18, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %32 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TX_BUF_ALLOC, align 4
  %35 = load i32, i32* @TX_DESC_CNT, align 4
  %36 = mul nsw i32 %34, %35
  %37 = add nsw i32 %36, 4
  %38 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %39 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %42 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_free_consistent(i32 %33, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_release_regions(%struct.pci_dev* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_disable_device(%struct.pci_dev* %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.uli526x_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
