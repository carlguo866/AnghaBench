; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bnx2_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bnx2* @netdev_priv(%struct.net_device* %4)
  store %struct.bnx2* %5, %struct.bnx2** %3, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = call i32 @bnx2_dump_ftq(%struct.bnx2* %6)
  %8 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %9 = call i32 @bnx2_dump_state(%struct.bnx2* %8)
  %10 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %11 = call i32 @bnx2_dump_mcp_state(%struct.bnx2* %10)
  %12 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = call i32 @schedule_work(i32* %13)
  ret void
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2_dump_ftq(%struct.bnx2*) #1

declare dso_local i32 @bnx2_dump_state(%struct.bnx2*) #1

declare dso_local i32 @bnx2_dump_mcp_state(%struct.bnx2*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
