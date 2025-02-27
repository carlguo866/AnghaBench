; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu1_disable_v2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu1_disable_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_IRQ_WDOG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @octeon_irq_ciu1_disable_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ciu1_disable_v2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @cvmx_get_core_num()
  %6 = mul nsw i32 %5, 2
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @OCTEON_IRQ_WDOG0, align 4
  %10 = sub i32 %8, %9
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @CVMX_CIU_INTX_EN1_W1C(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @cvmx_write_csr(i32 %14, i64 %15)
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_CIU_INTX_EN1_W1C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
