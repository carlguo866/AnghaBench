; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_is_valid_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_is_valid_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i64 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @batadv_is_valid_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_is_valid_iface(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IFF_LOOPBACK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ARPHRD_ETHER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %11
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ETH_ALEN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i64 @batadv_is_on_batman_iface(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %24, %17, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @batadv_is_on_batman_iface(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
