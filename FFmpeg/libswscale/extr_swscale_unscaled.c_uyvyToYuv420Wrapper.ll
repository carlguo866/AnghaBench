; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_uyvyToYuv420Wrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_uyvyToYuv420Wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32*, i32, i32, i32**, i32*)* @uyvyToYuv420Wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uyvyToYuv420Wrapper(%struct.TYPE_3__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32**, i32*** %13, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  store i32* %27, i32** %15, align 8
  %28 = load i32**, i32*** %13, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  store i32* %38, i32** %16, align 8
  %39 = load i32**, i32*** %13, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  store i32* %49, i32** %17, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = load i32**, i32*** %9, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @uyvytoyuv420(i32* %50, i32* %51, i32* %52, i32* %55, i32 %58, i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load i32**, i32*** %13, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %7
  %75 = load i32**, i32*** %13, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @fillPlane(i32* %77, i32 %80, i32 %83, i32 %84, i32 %85, i32 255)
  br label %87

87:                                               ; preds = %74, %7
  %88 = load i32, i32* %12, align 4
  ret i32 %88
}

declare dso_local i32 @uyvytoyuv420(i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fillPlane(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
