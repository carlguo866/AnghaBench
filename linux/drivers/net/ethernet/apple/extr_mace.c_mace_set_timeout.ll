; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_mace.c_mace_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_mace.c_mace_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mace_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@TX_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mace_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mace_set_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mace_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.mace_data* @netdev_priv(%struct.net_device* %4)
  store %struct.mace_data* %5, %struct.mace_data** %3, align 8
  %6 = load %struct.mace_data*, %struct.mace_data** %3, align 8
  %7 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.mace_data*, %struct.mace_data** %3, align 8
  %12 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %11, i32 0, i32 1
  %13 = call i32 @del_timer(%struct.TYPE_3__* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @TX_TIMEOUT, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.mace_data*, %struct.mace_data** %3, align 8
  %19 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.mace_data*, %struct.mace_data** %3, align 8
  %22 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %21, i32 0, i32 1
  %23 = call i32 @add_timer(%struct.TYPE_3__* %22)
  %24 = load %struct.mace_data*, %struct.mace_data** %3, align 8
  %25 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  ret void
}

declare dso_local %struct.mace_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
