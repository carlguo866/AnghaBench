; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c___efx_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c___efx_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.TYPE_4__*, i32, i32, %struct.efx_nic* }
%struct.TYPE_4__ = type { i32 }
%struct.efx_nic = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.efx_rx_buffer = type { i32, i32 }
%struct.efx_rx_queue = type { i32 }

@EFX_RX_PKT_PREFIX_LEN = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@EFX_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@EFX_RX_PKT_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__efx_rx_packet(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_rx_buffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.efx_rx_queue*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %7 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %8 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %7, i32 0, i32 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  store %struct.efx_nic* %9, %struct.efx_nic** %3, align 8
  %10 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %11 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %10, i32 0, i32 3
  %12 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %13 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.efx_rx_buffer* @efx_rx_buffer(i32* %11, i32 %14)
  store %struct.efx_rx_buffer* %15, %struct.efx_rx_buffer** %4, align 8
  %16 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %17 = call i32* @efx_rx_buf_va(%struct.efx_rx_buffer* %16)
  store i32* %17, i32** %5, align 8
  %18 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EFX_RX_PKT_PREFIX_LEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = call i32 @le16_to_cpup(i32* %30)
  %32 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @efx_loopback_rx_packet(%struct.efx_nic* %41, i32* %42, i32 %45)
  %47 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %48 = call %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel* %47)
  store %struct.efx_rx_queue* %48, %struct.efx_rx_queue** %6, align 8
  %49 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %50 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %51 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %52 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @efx_free_rx_buffers(%struct.efx_rx_queue* %49, %struct.efx_rx_buffer* %50, i32 %53)
  br label %106

55:                                               ; preds = %34
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %55
  %69 = load i32, i32* @EFX_RX_PKT_CSUMMED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %55
  %76 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %77 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EFX_RX_PKT_TCP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %84 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %91 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %92 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %93 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @efx_rx_packet_gro(%struct.efx_channel* %90, %struct.efx_rx_buffer* %91, i32 %94, i32* %95)
  br label %105

97:                                               ; preds = %82, %75
  %98 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %4, align 8
  %101 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %102 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @efx_rx_deliver(%struct.efx_channel* %98, i32* %99, %struct.efx_rx_buffer* %100, i32 %103)
  br label %105

105:                                              ; preds = %97, %89
  br label %106

106:                                              ; preds = %105, %40
  %107 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %108 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  ret void
}

declare dso_local %struct.efx_rx_buffer* @efx_rx_buffer(i32*, i32) #1

declare dso_local i32* @efx_rx_buf_va(%struct.efx_rx_buffer*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @efx_loopback_rx_packet(%struct.efx_nic*, i32*, i32) #1

declare dso_local %struct.efx_rx_queue* @efx_channel_get_rx_queue(%struct.efx_channel*) #1

declare dso_local i32 @efx_free_rx_buffers(%struct.efx_rx_queue*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i32 @efx_rx_packet_gro(%struct.efx_channel*, %struct.efx_rx_buffer*, i32, i32*) #1

declare dso_local i32 @efx_rx_deliver(%struct.efx_channel*, i32*, %struct.efx_rx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
