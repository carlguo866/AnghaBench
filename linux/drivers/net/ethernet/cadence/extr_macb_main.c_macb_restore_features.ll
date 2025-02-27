; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_restore_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_restore_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_restore_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_restore_features(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  %5 = load %struct.macb*, %struct.macb** %2, align 8
  %6 = getelementptr inbounds %struct.macb, %struct.macb* %5, i32 0, i32 0
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.macb*, %struct.macb** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @macb_set_txcsum_feature(%struct.macb* %11, i32 %12)
  %14 = load %struct.macb*, %struct.macb** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @macb_set_rxcsum_feature(%struct.macb* %14, i32 %15)
  %17 = load %struct.macb*, %struct.macb** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @macb_set_rxflow_feature(%struct.macb* %17, i32 %18)
  ret void
}

declare dso_local i32 @macb_set_txcsum_feature(%struct.macb*, i32) #1

declare dso_local i32 @macb_set_rxcsum_feature(%struct.macb*, i32) #1

declare dso_local i32 @macb_set_rxflow_feature(%struct.macb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
