; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SPIDER_NET_MIN_MTU = common dso_local global i32 0, align 4
@SPIDER_NET_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @spider_net_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SPIDER_NET_MIN_MTU, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SPIDER_NET_MAX_MTU, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
