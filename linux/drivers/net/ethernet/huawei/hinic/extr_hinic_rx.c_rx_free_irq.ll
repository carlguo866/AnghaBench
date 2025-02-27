; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rxq = type { %struct.hinic_rq* }
%struct.hinic_rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_rxq*)* @rx_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_free_irq(%struct.hinic_rxq* %0) #0 {
  %2 = alloca %struct.hinic_rxq*, align 8
  %3 = alloca %struct.hinic_rq*, align 8
  store %struct.hinic_rxq* %0, %struct.hinic_rxq** %2, align 8
  %4 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %5 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %4, i32 0, i32 0
  %6 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  store %struct.hinic_rq* %6, %struct.hinic_rq** %3, align 8
  %7 = load %struct.hinic_rq*, %struct.hinic_rq** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @irq_set_affinity_hint(i32 %9, i32* null)
  %11 = load %struct.hinic_rq*, %struct.hinic_rq** %3, align 8
  %12 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.hinic_rxq* %14)
  %16 = load %struct.hinic_rxq*, %struct.hinic_rxq** %2, align 8
  %17 = call i32 @rx_del_napi(%struct.hinic_rxq* %16)
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.hinic_rxq*) #1

declare dso_local i32 @rx_del_napi(%struct.hinic_rxq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
