; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_toggle_ring_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_toggle_ring_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { i32 }

@RCB_INT_FLAG_TX = common dso_local global i32 0, align 4
@RCB_INT_FLAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, i32)* @hns_ae_toggle_ring_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_toggle_ring_irq(%struct.hnae_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hnae_ring* %0, %struct.hnae_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %7 = call i64 @is_tx_ring(%struct.hnae_ring* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @RCB_INT_FLAG_TX, align 4
  store i32 %10, i32* %5, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @RCB_INT_FLAG_RX, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %15 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @hns_rcb_int_ctrl_hw(i32 %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i64 @is_tx_ring(%struct.hnae_ring*) #1

declare dso_local i32 @hns_rcb_int_ctrl_hw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
