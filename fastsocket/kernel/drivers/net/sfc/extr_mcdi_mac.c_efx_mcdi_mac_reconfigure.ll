; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_mac.c_efx_mcdi_mac_reconfigure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_mac.c_efx_mcdi_mac_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MC_CMD_SET_MCAST_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mcdi_mac_reconfigure(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 1
  %7 = call i32 @mutex_is_locked(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = call i32 @efx_mcdi_set_mac(%struct.efx_nic* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = load i32, i32* @MC_CMD_SET_MCAST_HASH, align 4
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %19, i32 %20, i32 %24, i32 4, i32* null, i32 0, i32* null)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @efx_mcdi_set_mac(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
