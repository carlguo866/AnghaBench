; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client.c_callback_check_duplicate_pixmap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client.c_callback_check_duplicate_pixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64*, i64, i64 }

@PIXMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i8*)* @callback_check_duplicate_pixmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callback_check_duplicate_pixmap(i32* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = call i32 @UNUSED_NDEBUG(i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @UNUSED_NDEBUG(i64 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = icmp eq i32* %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @vcos_assert(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @vcos_assert(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @vcos_assert(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PIXMAP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, -1
  br i1 %57, label %58, label %82

58:                                               ; preds = %51, %44
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %104, label %107

82:                                               ; preds = %51
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, -1
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96, %70
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %96, %89, %82, %70, %58, %4
  ret void
}

declare dso_local i32 @UNUSED_NDEBUG(i64) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
