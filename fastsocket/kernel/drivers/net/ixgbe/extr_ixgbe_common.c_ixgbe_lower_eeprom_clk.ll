; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_lower_eeprom_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_lower_eeprom_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_EEC_SK = common dso_local global i32 0, align 4
@IXGBE_EEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*, i32*)* @ixgbe_lower_eeprom_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_lower_eeprom_clk(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IXGBE_EEC_SK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = load i32*, i32** %4, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = load i32, i32* @IXGBE_EEC, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %11, i32 %12, i32 %14)
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %16)
  %18 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
