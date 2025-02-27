; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_proxy_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_proxy_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_mcdi_iface = type { i64, i32, i32 }

@MCDI_STATE_PROXY_WAIT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_mcdi_iface*)* @efx_mcdi_proxy_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_proxy_abort(%struct.efx_mcdi_iface* %0) #0 {
  %2 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_mcdi_iface* %0, %struct.efx_mcdi_iface** %2, align 8
  %3 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %2, align 8
  %4 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MCDI_STATE_PROXY_WAIT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @EINTR, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %2, align 8
  %12 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %2, align 8
  %14 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %13, i32 0, i32 1
  %15 = call i32 @wake_up(i32* %14)
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
