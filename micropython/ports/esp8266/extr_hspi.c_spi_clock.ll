; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_clock.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_CLK_EQU_SYSCLK = common dso_local global i32 0, align 4
@SPI_CLKDIV_PRE = common dso_local global i32 0, align 4
@SPI_CLKDIV_PRE_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_N = common dso_local global i32 0, align 4
@SPI_CLKCNT_N_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_H = common dso_local global i32 0, align 4
@SPI_CLKCNT_H_S = common dso_local global i32 0, align 4
@SPI_CLKCNT_L = common dso_local global i32 0, align 4
@SPI_CLKCNT_L_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_clock(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %3
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @SPI_CLOCK(i32 %13)
  %15 = load i32, i32* @SPI_CLK_EQU_SYSCLK, align 4
  %16 = call i32 @WRITE_PERI_REG(i32 %14, i32 %15)
  br label %46

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SPI_CLOCK(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @SPI_CLKDIV_PRE, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @SPI_CLKDIV_PRE_S, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @SPI_CLKCNT_N, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @SPI_CLKCNT_N_S, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %25, %31
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 1
  %35 = load i32, i32* @SPI_CLKCNT_H, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @SPI_CLKCNT_H_S, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %32, %38
  %40 = load i32, i32* @SPI_CLKCNT_L, align 4
  %41 = and i32 0, %40
  %42 = load i32, i32* @SPI_CLKCNT_L_S, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %39, %43
  %45 = call i32 @WRITE_PERI_REG(i32 %19, i32 %44)
  br label %46

46:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @SPI_CLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
