; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_copybreak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_copybreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.e1000_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_rx_buffer = type { i32 }

@copybreak = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.e1000_adapter*, %struct.e1000_rx_buffer*, i32, i8*)* @e1000_copybreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @e1000_copybreak(%struct.e1000_adapter* %0, %struct.e1000_rx_buffer* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_rx_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %6, align 8
  store %struct.e1000_rx_buffer* %1, %struct.e1000_rx_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @copybreak, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %38

15:                                               ; preds = %4
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.sk_buff* @e1000_alloc_rx_skb(%struct.e1000_adapter* %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %38

22:                                               ; preds = %15
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = call i32 @dma_sync_single_for_cpu(i32* %26, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @skb_put_data(%struct.sk_buff* %33, i8* %34, i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  br label %38

38:                                               ; preds = %22, %21, %14
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %39
}

declare dso_local %struct.sk_buff* @e1000_alloc_rx_skb(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
