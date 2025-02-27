; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_skb_recv_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_skb_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtnet_info* }
%struct.virtnet_info = type { %struct.receive_queue* }
%struct.receive_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @skb_recv_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_recv_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca %struct.receive_queue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %6 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  store %struct.virtnet_info* %9, %struct.virtnet_info** %3, align 8
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %11 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %10, i32 0, i32 0
  %12 = load %struct.receive_queue*, %struct.receive_queue** %11, align 8
  %13 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %14 = call i64 @vq2rxq(%struct.virtqueue* %13)
  %15 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %12, i64 %14
  store %struct.receive_queue* %15, %struct.receive_queue** %4, align 8
  %16 = load %struct.receive_queue*, %struct.receive_queue** %4, align 8
  %17 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %16, i32 0, i32 0
  %18 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %19 = call i32 @virtqueue_napi_schedule(i32* %17, %struct.virtqueue* %18)
  ret void
}

declare dso_local i64 @vq2rxq(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_napi_schedule(i32*, %struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
