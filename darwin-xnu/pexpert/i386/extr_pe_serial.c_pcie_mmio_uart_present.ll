; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_pcie_mmio_uart_present.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_serial.c_pcie_mmio_uart_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcie_mmio_uart_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_mmio_uart_present() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SCR, align 4
  %3 = call i32 @PCIE_MMIO_WRITE(i32 %2, i32 90)
  %4 = load i32, i32* @SCR, align 4
  %5 = call i32 @PCIE_MMIO_READ(i32 %4)
  %6 = icmp ne i32 %5, 90
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @SCR, align 4
  %10 = call i32 @PCIE_MMIO_WRITE(i32 %9, i32 165)
  %11 = load i32, i32* @SCR, align 4
  %12 = call i32 @PCIE_MMIO_READ(i32 %11)
  %13 = icmp ne i32 %12, 165
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %16

15:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %14, %7
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @PCIE_MMIO_WRITE(i32, i32) #1

declare dso_local i32 @PCIE_MMIO_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
