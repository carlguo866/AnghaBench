; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %50, %1
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %9)
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ff_add_format(i32** %4, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %43, %35, %28, %21, %12
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %8

53:                                               ; preds = %8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ff_set_common_formats(i32* %54, i32* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_3__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_set_common_formats(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
