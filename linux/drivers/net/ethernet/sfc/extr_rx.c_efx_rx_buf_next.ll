; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_buf_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_buf_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32 }
%struct.efx_rx_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efx_rx_buffer* (%struct.efx_rx_queue*, %struct.efx_rx_buffer*)* @efx_rx_buf_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.efx_rx_queue* %0, %struct.efx_rx_buffer* %1) #0 {
  %3 = alloca %struct.efx_rx_buffer*, align 8
  %4 = alloca %struct.efx_rx_queue*, align 8
  %5 = alloca %struct.efx_rx_buffer*, align 8
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %4, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %5, align 8
  %6 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %7 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %8 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %9 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %7, i32 %10)
  %12 = icmp eq %struct.efx_rx_buffer* %6, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %18 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %17, i32 0)
  store %struct.efx_rx_buffer* %18, %struct.efx_rx_buffer** %3, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %20, i64 1
  store %struct.efx_rx_buffer* %21, %struct.efx_rx_buffer** %3, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %3, align 8
  ret %struct.efx_rx_buffer* %23
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
