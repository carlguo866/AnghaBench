; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_virtnet_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_virtnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.virtnet_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @virtnet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.virtnet_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %4)
  store %struct.virtnet_info* %5, %struct.virtnet_info** %3, align 8
  %6 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @try_fill_recv(%struct.virtnet_info* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %12 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %15 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %14, i32 0, i32 0
  %16 = call i32 @queue_delayed_work(i32 %13, i32* %15, i32 0)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %19 = call i32 @virtnet_napi_enable(%struct.virtnet_info* %18)
  ret i32 0
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @try_fill_recv(%struct.virtnet_info*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @virtnet_napi_enable(%struct.virtnet_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
