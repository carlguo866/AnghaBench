; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_reg_flags = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CVMX_PKO_REG_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_pko_disable() #0 {
  %1 = alloca %union.cvmx_pko_reg_flags, align 8
  %2 = load i32, i32* @CVMX_PKO_REG_FLAGS, align 4
  %3 = call i32 @cvmx_read_csr(i32 %2)
  %4 = bitcast %union.cvmx_pko_reg_flags* %1 to i32*
  store i32 %3, i32* %4, align 8
  %5 = bitcast %union.cvmx_pko_reg_flags* %1 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @CVMX_PKO_REG_FLAGS, align 4
  %8 = bitcast %union.cvmx_pko_reg_flags* %1 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @cvmx_write_csr(i32 %7, i32 %9)
  ret void
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
