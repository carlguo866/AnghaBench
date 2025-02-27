; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i32 }

@IFLA_MACVLAN_MODE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macvlan_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.macvlan_dev* %8, %struct.macvlan_dev** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @IFLA_MACVLAN_MODE, align 4
  %11 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %12 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @NLA_PUT_U32(%struct.sk_buff* %9, i32 %10, i32 %13)
  store i32 0, i32* %3, align 4
  br label %18

15:                                               ; No predecessors!
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
