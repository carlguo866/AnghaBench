; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_time.c_mktime64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_time.c_mktime64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mktime64(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %13, align 4
  %18 = sub i32 %17, 2
  store i32 %18, i32* %13, align 4
  %19 = icmp sge i32 0, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = add i32 %21, 12
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = sub i32 %23, 1
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %20, %6
  %26 = load i32, i32* %14, align 4
  %27 = udiv i32 %26, 4
  %28 = load i32, i32* %14, align 4
  %29 = udiv i32 %28, 100
  %30 = sub i32 %27, %29
  %31 = load i32, i32* %14, align 4
  %32 = udiv i32 %31, 400
  %33 = add i32 %30, %32
  %34 = load i32, i32* %13, align 4
  %35 = mul i32 367, %34
  %36 = udiv i32 %35, 12
  %37 = add i32 %33, %36
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %14, align 4
  %41 = mul i32 %40, 365
  %42 = add i32 %39, %41
  %43 = sub i32 %42, 719499
  %44 = mul i32 %43, 24
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %44, %45
  %47 = mul i32 %46, 60
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %47, %48
  %50 = mul i32 %49, 60
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %50, %51
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
