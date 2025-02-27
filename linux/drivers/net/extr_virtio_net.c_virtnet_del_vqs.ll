; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_del_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_del_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { %struct.virtio_device* }
%struct.virtio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*)* @virtnet_del_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_del_vqs(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  %3 = alloca %struct.virtio_device*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  %4 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %5 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %4, i32 0, i32 0
  %6 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  store %struct.virtio_device* %6, %struct.virtio_device** %3, align 8
  %7 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %8 = call i32 @virtnet_clean_affinity(%struct.virtnet_info* %7)
  %9 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %12, align 8
  %14 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %15 = call i32 %13(%struct.virtio_device* %14)
  %16 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %17 = call i32 @virtnet_free_queues(%struct.virtnet_info* %16)
  ret void
}

declare dso_local i32 @virtnet_clean_affinity(%struct.virtnet_info*) #1

declare dso_local i32 @virtnet_free_queues(%struct.virtnet_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
