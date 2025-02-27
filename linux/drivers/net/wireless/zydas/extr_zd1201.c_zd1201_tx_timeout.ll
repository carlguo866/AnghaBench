; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.zd1201 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%s: TX timeout, shooting down urb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @zd1201_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd1201_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.zd1201*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.zd1201* @netdev_priv(%struct.net_device* %4)
  store %struct.zd1201* %5, %struct.zd1201** %3, align 8
  %6 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %7 = icmp ne %struct.zd1201* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %11 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_warn(i32* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.zd1201*, %struct.zd1201** %3, align 8
  %19 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_unlink_urb(i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @netif_trans_update(%struct.net_device* %27)
  br label %29

29:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @usb_unlink_urb(i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
