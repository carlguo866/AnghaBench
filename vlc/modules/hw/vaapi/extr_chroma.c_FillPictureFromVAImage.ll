; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_FillPictureFromVAImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_FillPictureFromVAImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64*, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }

@VLC_CODEC_I420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*)* @FillPictureFromVAImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillPictureFromVAImage(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32*], align 16
  %10 = alloca [2 x i64], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %12, i64 %18
  store i32* %19, i32** %11, align 8
  %20 = getelementptr inbounds i32*, i32** %11, i64 1
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  store i32* %28, i32** %20, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %29, align 8
  %35 = getelementptr inbounds i64, i64* %29, i64 1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %35, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %88 [
    i32 131, label %45
    i32 130, label %62
  ]

45:                                               ; preds = %4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VLC_CODEC_I420, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @Copy420_SP_to_P(%struct.TYPE_12__* %54, i32** %55, i64* %56, i32 %59, i32* %60)
  br label %90

62:                                               ; preds = %4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %85 [
    i32 128, label %67
    i32 129, label %76
  ]

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @Copy420_SP_to_SP(%struct.TYPE_12__* %68, i32** %69, i64* %70, i32 %73, i32* %74)
  br label %87

76:                                               ; preds = %62
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %79 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @Copy420_16_SP_to_P(%struct.TYPE_12__* %77, i32** %78, i64* %79, i32 %82, i32 6, i32* %83)
  br label %87

85:                                               ; preds = %62
  %86 = call i32 (...) @vlc_assert_unreachable()
  br label %87

87:                                               ; preds = %85, %76, %67
  br label %90

88:                                               ; preds = %4
  %89 = call i32 (...) @vlc_assert_unreachable()
  br label %90

90:                                               ; preds = %88, %87, %45
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Copy420_SP_to_P(%struct.TYPE_12__*, i32**, i64*, i32, i32*) #1

declare dso_local i32 @Copy420_SP_to_SP(%struct.TYPE_12__*, i32**, i64*, i32, i32*) #1

declare dso_local i32 @Copy420_16_SP_to_P(%struct.TYPE_12__*, i32**, i64*, i32, i32, i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
