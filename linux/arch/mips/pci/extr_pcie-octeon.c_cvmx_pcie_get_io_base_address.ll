; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c_cvmx_pcie_get_io_base_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c_cvmx_pcie_get_io_base_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pcie_address = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @cvmx_pcie_get_io_base_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cvmx_pcie_get_io_base_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_pcie_address, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast %union.cvmx_pcie_address* %3 to i64*
  store i64 0, i64* %4, align 8
  %5 = bitcast %union.cvmx_pcie_address* %3 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = bitcast %union.cvmx_pcie_address* %3 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = bitcast %union.cvmx_pcie_address* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 3, i32* %10, align 4
  %11 = bitcast %union.cvmx_pcie_address* %3 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 2, i32* %12, align 8
  %13 = bitcast %union.cvmx_pcie_address* %3 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = bitcast %union.cvmx_pcie_address* %3 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = bitcast %union.cvmx_pcie_address* %3 to i64*
  %19 = load i64, i64* %18, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
