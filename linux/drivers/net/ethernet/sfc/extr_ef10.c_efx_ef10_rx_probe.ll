; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_rx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_rx_queue*)* @efx_ef10_rx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_rx_probe(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %3 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %4 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %10 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @efx_nic_alloc_buffer(i32 %5, i32* %8, i32 %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @efx_nic_alloc_buffer(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
