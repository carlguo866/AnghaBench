; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmp_mask_get_shift_and_prec.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmp_mask_get_shift_and_prec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @bmp_mask_get_shift_and_prec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmp_mask_get_shift_and_prec(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %16, %11
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %12

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %22

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
