; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_calculate_dds_file_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_calculate_dds_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i64, i64)* @calculate_dds_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calculate_dds_file_size(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %41, %6
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  store i64 0, i64* %16, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @calculate_dds_surface_size(i32 %22, i64 %23, i64 %24, i64* %15, i64* %16)
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %16, align 8
  %28 = mul nsw i64 %27, %26
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* %14, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sdiv i64 %32, 2
  %34 = call i64 @max(i32 1, i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sdiv i64 %35, 2
  %37 = call i64 @max(i32 1, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sdiv i64 %38, 2
  %40 = call i64 @max(i32 1, i64 %39)
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %21
  %42 = load i64, i64* %13, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %13, align 8
  br label %17

44:                                               ; preds = %17
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %14, align 8
  %47 = mul nsw i64 %46, %45
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  ret i64 %50
}

declare dso_local i32 @calculate_dds_surface_size(i32, i64, i64, i64*, i64*) #1

declare dso_local i64 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
