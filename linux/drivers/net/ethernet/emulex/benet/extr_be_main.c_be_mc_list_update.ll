; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mc_list_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mc_list_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @be_mc_list_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mc_list_update(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.be_adapter* %7, %struct.be_adapter** %5, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  ret i32 0
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
