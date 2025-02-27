; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dsp.c_int_goertzel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dsp.c_int_goertzel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @int_goertzel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @int_goertzel(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @int_cos(i64 %14)
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %35, %3
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 32768
  %30 = add nsw i32 %25, %29
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %17

38:                                               ; preds = %17
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 32768
  %52 = sub nsw i32 %45, %51
  store i32 %52, i32* %11, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = mul i64 %53, %54
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @do_div(i32 %56, i64 %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  ret i64 %60
}

declare dso_local i32 @int_cos(i64) #1

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
