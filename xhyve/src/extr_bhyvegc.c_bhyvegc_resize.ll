; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_bhyvegc.c_bhyvegc_resize.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_bhyvegc.c_bhyvegc_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhyvegc = type { i32, %struct.bhyvegc_image* }
%struct.bhyvegc_image = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhyvegc_resize(%struct.bhyvegc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bhyvegc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhyvegc_image*, align 8
  store %struct.bhyvegc* %0, %struct.bhyvegc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bhyvegc*, %struct.bhyvegc** %4, align 8
  %9 = getelementptr inbounds %struct.bhyvegc, %struct.bhyvegc* %8, i32 0, i32 1
  %10 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %9, align 8
  store %struct.bhyvegc_image* %10, %struct.bhyvegc_image** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %7, align 8
  %13 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %7, align 8
  %16 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bhyvegc*, %struct.bhyvegc** %4, align 8
  %18 = getelementptr inbounds %struct.bhyvegc, %struct.bhyvegc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %3
  %22 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %7, align 8
  %23 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32* @realloc(i32* %24, i32 %30)
  %32 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %7, align 8
  %33 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %7, align 8
  %35 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %21
  %39 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %7, align 8
  %40 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32* %41, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %38, %21
  br label %50

50:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
