; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_j2date.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_j2date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j2date(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add i32 %14, 32044
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = udiv i32 %16, 146097
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = mul i32 %19, 146097
  %21 = sub i32 %18, %20
  %22 = mul i32 %21, 4
  %23 = add i32 %22, 3
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul i32 %24, 3
  %26 = add i32 60, %25
  %27 = load i32, i32* %11, align 4
  %28 = udiv i32 %27, 146097
  %29 = add i32 %26, %28
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = udiv i32 %32, 1461
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul i32 %34, 1461
  %36 = load i32, i32* %9, align 4
  %37 = sub i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul i32 %38, 4
  %40 = udiv i32 %39, 1461
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 305
  %46 = urem i32 %45, 365
  br label %51

47:                                               ; preds = %4
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 306
  %50 = urem i32 %49, 366
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %46, %43 ], [ %50, %47 ]
  %53 = add i32 %52, 123
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = mul i32 %54, 4
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 4800
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul i32 %61, 2141
  %63 = udiv i32 %62, 65536
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul i32 7834, %65
  %67 = udiv i32 %66, 256
  %68 = sub i32 %64, %67
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 10
  %72 = urem i32 %71, 12
  %73 = add i32 %72, 1
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
