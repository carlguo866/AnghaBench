; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_multiply.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i64, i32, i64)* @multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @multiply(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
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
  %18 = bitcast %struct.TYPE_5__* %6 to { i32, i64 }*
  %19 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %18, i32 0, i32 0
  store i32 %0, i32* %19, align 8
  %20 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %18, i32 0, i32 1
  store i64 %1, i64* %20, align 8
  %21 = bitcast %struct.TYPE_5__* %7 to { i32, i64 }*
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %21, i32 0, i32 0
  store i32 %2, i32* %22, align 8
  %23 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %21, i32 0, i32 1
  store i64 %3, i64* %23, align 8
  store i32 -1, i32* %17, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 32
  store i32 %26, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 32
  store i32 %33, i32* %10, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %17, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = ashr i32 %50, 32
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %17, align 4
  %54 = and i32 %52, %53
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %17, align 4
  %58 = and i32 %56, %57
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = add i32 %60, -2147483648
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %14, align 4
  %64 = ashr i32 %63, 32
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* %13, align 4
  %67 = ashr i32 %66, 32
  %68 = add nsw i32 %65, %67
  %69 = load i32, i32* %16, align 4
  %70 = ashr i32 %69, 32
  %71 = add nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %74, %76
  %78 = add nsw i64 %77, 64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %78, i64* %79, align 8
  %80 = bitcast %struct.TYPE_5__* %5 to { i32, i64 }*
  %81 = load { i32, i64 }, { i32, i64 }* %80, align 8
  ret { i32, i64 } %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
