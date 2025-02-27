; ModuleID = '/home/carl/AnghaBench/i3/src/extr_xcb.c_get_visual_depth.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_xcb.c_get_visual_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64 }

@root_screen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_visual_depth(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @root_screen, align 4
  %9 = call { %struct.TYPE_12__*, i64 } @xcb_screen_allowed_depths_iterator(i32 %8)
  %10 = bitcast %struct.TYPE_11__* %5 to { %struct.TYPE_12__*, i64 }*
  %11 = getelementptr inbounds { %struct.TYPE_12__*, i64 }, { %struct.TYPE_12__*, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { %struct.TYPE_12__*, i64 } %9, 0
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds { %struct.TYPE_12__*, i64 }, { %struct.TYPE_12__*, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { %struct.TYPE_12__*, i64 } %9, 1
  store i64 %14, i64* %13, align 8
  %15 = bitcast %struct.TYPE_11__* %4 to i8*
  %16 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  br label %17

17:                                               ; preds = %52, %1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = call { %struct.TYPE_9__*, i64 } @xcb_depth_visuals_iterator(%struct.TYPE_12__* %23)
  %25 = bitcast %struct.TYPE_10__* %7 to { %struct.TYPE_9__*, i64 }*
  %26 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { %struct.TYPE_9__*, i64 } %24, 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { %struct.TYPE_9__*, i64 } %24, 1
  store i64 %29, i64* %28, align 8
  %30 = bitcast %struct.TYPE_10__* %6 to i8*
  %31 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %49, %21
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %55

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = call i32 @xcb_visualtype_next(%struct.TYPE_10__* %6)
  br label %32

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = call i32 @xcb_depth_next(%struct.TYPE_11__* %4)
  br label %17

54:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local { %struct.TYPE_12__*, i64 } @xcb_screen_allowed_depths_iterator(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { %struct.TYPE_9__*, i64 } @xcb_depth_visuals_iterator(%struct.TYPE_12__*) #1

declare dso_local i32 @xcb_visualtype_next(%struct.TYPE_10__*) #1

declare dso_local i32 @xcb_depth_next(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
