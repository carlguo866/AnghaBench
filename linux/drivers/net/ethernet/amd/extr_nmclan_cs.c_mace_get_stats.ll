; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32 }
%struct.net_device = type { %struct.net_device_stats, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: updating the statistics.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @mace_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @mace_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %4)
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @update_stats(i32 %8, %struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = call i32 @pr_linux_stats(%struct.net_device_stats* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @pr_mace_stats(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  ret %struct.net_device_stats* %22
}

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @update_stats(i32, %struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pr_linux_stats(%struct.net_device_stats*) #1

declare dso_local i32 @pr_mace_stats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
