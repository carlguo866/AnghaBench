; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_targaenc.c_targa_encode_rle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_targaenc.c_targa_encode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*, i32, i32, i32)* @targa_encode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targa_encode_rle(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %16, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %53, %6
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32*, i32** %16, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %14, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %29, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ff_rle_encode(i32* %23, i32 %24, i64 %38, i32 %39, i32 %40, i32 127, i32 0, i32 -1, i32 0)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %64

45:                                               ; preds = %22
  %46 = load i32, i32* %15, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32*, i32** %16, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %56, %44
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @ff_rle_encode(i32*, i32, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
