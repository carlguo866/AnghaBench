; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_cow_user.c_cow_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_cow_user.c_cow_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cow_sizes(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %46

17:                                               ; preds = %7
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 8, %22
  %24 = sdiv i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** %13, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %13, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %28, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** %14, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %10, align 4
  %40 = sdiv i32 %38, %39
  %41 = load i32*, i32** %14, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %68

46:                                               ; preds = %7
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @DIV_ROUND(i64 %48, i32 %49)
  %51 = load i64*, i64** %13, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @DIV_ROUND(i64 %53, i32 8)
  %55 = load i64*, i64** %13, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %13, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %14, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @ROUND_UP(i32 %64, i32 %65)
  %67 = load i32*, i32** %14, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %46, %17
  ret void
}

declare dso_local i64 @DIV_ROUND(i64, i32) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
