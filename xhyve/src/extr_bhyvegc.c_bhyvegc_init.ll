; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_bhyvegc.c_bhyvegc_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_bhyvegc.c_bhyvegc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhyvegc = type { i32, %struct.bhyvegc_image* }
%struct.bhyvegc_image = type { i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhyvegc* @bhyvegc_init(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bhyvegc*, align 8
  %8 = alloca %struct.bhyvegc_image*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = call i8* @calloc(i32 1, i32 16)
  %10 = bitcast i8* %9 to %struct.bhyvegc*
  store %struct.bhyvegc* %10, %struct.bhyvegc** %7, align 8
  %11 = call i8* @calloc(i32 1, i32 16)
  %12 = bitcast i8* %11 to %struct.bhyvegc_image*
  store %struct.bhyvegc_image* %12, %struct.bhyvegc_image** %8, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %15 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %18 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %24 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bhyvegc*, %struct.bhyvegc** %7, align 8
  %26 = getelementptr inbounds %struct.bhyvegc, %struct.bhyvegc* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i8* @calloc(i32 %30, i32 4)
  %32 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %33 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bhyvegc*, %struct.bhyvegc** %7, align 8
  %35 = getelementptr inbounds %struct.bhyvegc, %struct.bhyvegc* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %27, %21
  %37 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %38 = load %struct.bhyvegc*, %struct.bhyvegc** %7, align 8
  %39 = getelementptr inbounds %struct.bhyvegc, %struct.bhyvegc* %38, i32 0, i32 1
  store %struct.bhyvegc_image* %37, %struct.bhyvegc_image** %39, align 8
  %40 = load %struct.bhyvegc*, %struct.bhyvegc** %7, align 8
  ret %struct.bhyvegc* %40
}

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
