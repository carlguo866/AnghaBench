; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_setup_mcu.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/lufa/extr_lufa.c_setup_mcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDRF = common dso_local global i32 0, align 4
@MCUSR = common dso_local global i32 0, align 4
@CLKPCE = common dso_local global i32 0, align 4
@CLKPR = common dso_local global i32 0, align 4
@CLKPS3 = common dso_local global i32 0, align 4
@CLKPS2 = common dso_local global i32 0, align 4
@CLKPS1 = common dso_local global i32 0, align 4
@CLKPS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_mcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_mcu() #0 {
  %1 = load i32, i32* @WDRF, align 4
  %2 = shl i32 1, %1
  %3 = xor i32 %2, -1
  %4 = load i32, i32* @MCUSR, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @MCUSR, align 4
  %6 = call i32 (...) @wdt_disable()
  %7 = load i32, i32* @CLKPCE, align 4
  %8 = shl i32 1, %7
  store i32 %8, i32* @CLKPR, align 4
  %9 = load i32, i32* @CLKPS3, align 4
  %10 = shl i32 0, %9
  %11 = load i32, i32* @CLKPS2, align 4
  %12 = shl i32 0, %11
  %13 = or i32 %10, %12
  %14 = load i32, i32* @CLKPS1, align 4
  %15 = shl i32 0, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @CLKPS0, align 4
  %18 = shl i32 0, %17
  %19 = or i32 %16, %18
  store i32 %19, i32* @CLKPR, align 4
  ret void
}

declare dso_local i32 @wdt_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
