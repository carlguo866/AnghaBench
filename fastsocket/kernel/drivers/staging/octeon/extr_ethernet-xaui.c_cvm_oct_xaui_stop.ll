; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-xaui.c_cvm_oct_xaui_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-xaui.c_cvm_oct_xaui_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.cvmx_gmxx_prtx_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.octeon_ethernet = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_xaui_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %union.cvmx_gmxx_prtx_cfg, align 8
  %4 = alloca %struct.octeon_ethernet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %7)
  store %struct.octeon_ethernet* %8, %struct.octeon_ethernet** %4, align 8
  %9 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @INTERFACE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %14 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @INDEX(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %17, i32 %18)
  %20 = call i32 @cvmx_read_csr(i32 %19)
  %21 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i32*
  store i32 %20, i32* %21, align 8
  %22 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %24, i32 %25)
  %27 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cvmx_write_csr(i32 %26, i32 %28)
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
