; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.h_hns3_page_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.h_hns3_page_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*)* @hns3_page_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_page_order(%struct.hns3_enet_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_enet_ring*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %3, align 8
  %4 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %5 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = sdiv i32 %7, 2
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
