; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_interpolate.c_interpolate_numeric.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_interpolate.c_interpolate_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@int8_numeric = common dso_local global i32 0, align 4
@numeric_sub = common dso_local global i32 0, align 4
@numeric_mul = common dso_local global i32 0, align 4
@numeric_add = common dso_local global i32 0, align 4
@numeric_div = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @interpolate_numeric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpolate_numeric(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* @int8_numeric, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @Int64GetDatum(i32 %21)
  %23 = call i32 @DirectFunctionCall1(i32 %20, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @int8_numeric, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @Int64GetDatum(i32 %25)
  %27 = call i32 @DirectFunctionCall1(i32 %24, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @int8_numeric, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @Int64GetDatum(i32 %29)
  %31 = call i32 @DirectFunctionCall1(i32 %28, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @numeric_sub, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @DirectFunctionCall2(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @numeric_sub, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @DirectFunctionCall2(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* @numeric_mul, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @DirectFunctionCall2(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* @numeric_mul, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @DirectFunctionCall2(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* @numeric_add, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @DirectFunctionCall2(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* @numeric_sub, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @DirectFunctionCall2(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* @numeric_div, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @DirectFunctionCall2(i32 %56, i32 %57, i32 %58)
  ret i32 %59
}

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
