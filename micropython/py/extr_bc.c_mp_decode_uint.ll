; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_bc.c_mp_decode_uint.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_bc.c_mp_decode_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_decode_uint(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32**, i32*** %2, align 8
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %5, align 8
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %9, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 7
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 127
  %16 = or i32 %13, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %8, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32**, i32*** %2, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
