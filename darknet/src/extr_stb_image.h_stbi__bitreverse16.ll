; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__bitreverse16.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__bitreverse16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stbi__bitreverse16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__bitreverse16(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 43690
  %5 = ashr i32 %4, 1
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 21845
  %8 = shl i32 %7, 1
  %9 = or i32 %5, %8
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 52428
  %12 = ashr i32 %11, 2
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 13107
  %15 = shl i32 %14, 2
  %16 = or i32 %12, %15
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 61680
  %19 = ashr i32 %18, 4
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 3855
  %22 = shl i32 %21, 4
  %23 = or i32 %19, %22
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 65280
  %26 = ashr i32 %25, 8
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
