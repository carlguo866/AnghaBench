; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar934x_chip.c_ar934x_get_pll_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar934x_chip.c_ar934x_get_pll_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u_ar71xx_refclk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @ar934x_get_pll_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_get_pll_freq(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @u_ar71xx_refclk, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %13, align 4
  %18 = mul nsw i32 %17, %16
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @u_ar71xx_refclk, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = mul nsw i32 %25, %24
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %14, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
