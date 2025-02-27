; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_net_driver.h_efx_channel_get_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_net_driver.h_efx_channel_get_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32 }
%struct.efx_channel = type { %struct.efx_tx_queue* }

@EFX_TXQ_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efx_tx_queue* (%struct.efx_channel*, i32)* @efx_channel_get_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efx_tx_queue* @efx_channel_get_tx_queue(%struct.efx_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %6 = call i32 @efx_channel_has_tx_queues(%struct.efx_channel* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %11 = icmp uge i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @EFX_BUG_ON_PARANOID(i32 %14)
  %16 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %17 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %16, i32 0, i32 0
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i64 %20
  ret %struct.efx_tx_queue* %21
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @efx_channel_has_tx_queues(%struct.efx_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
