; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFMergeFields.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFMergeFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__**, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@_TIFFMergeFields.module = internal constant [17 x i8] c"_TIFFMergeFields\00", align 16
@_TIFFMergeFields.reason = internal constant [17 x i8] c"for fields array\00", align 16
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate fields array\00", align 1
@TIFF_ANY = common dso_local global i32 0, align 4
@tagCompare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_TIFFMergeFields(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %15 = icmp ne %struct.TYPE_11__** %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %28, %29
  %31 = call i64 @_TIFFCheckRealloc(%struct.TYPE_12__* %22, %struct.TYPE_11__** %25, i64 %30, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_TIFFMergeFields.reason, i64 0, i64 0))
  %32 = inttoptr i64 %31 to %struct.TYPE_11__**
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store %struct.TYPE_11__** %32, %struct.TYPE_11__*** %34, align 8
  br label %42

35:                                               ; preds = %16, %3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @_TIFFCheckMalloc(%struct.TYPE_12__* %36, i64 %37, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_TIFFMergeFields.reason, i64 0, i64 0))
  %39 = inttoptr i64 %38 to %struct.TYPE_11__**
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store %struct.TYPE_11__** %39, %struct.TYPE_11__*** %41, align 8
  br label %42

42:                                               ; preds = %35, %21
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %44, align 8
  %46 = icmp ne %struct.TYPE_11__** %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @TIFFErrorExt(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_TIFFMergeFields.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %98

52:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %84, %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %53
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TIFF_ANY, align 4
  %65 = call %struct.TYPE_11__* @TIFFFindField(%struct.TYPE_12__* %58, i32 %63, i32 %64)
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %9, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %57
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %77
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %68, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %53

87:                                               ; preds = %53
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @tagCompare, align 4
  %95 = call i32 @qsort(%struct.TYPE_11__** %90, i64 %93, i32 8, i32 %94)
  %96 = load i64, i64* %7, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %87, %47
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @_TIFFCheckRealloc(%struct.TYPE_12__*, %struct.TYPE_11__**, i64, i32, i8*) #1

declare dso_local i64 @_TIFFCheckMalloc(%struct.TYPE_12__*, i64, i32, i8*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @TIFFFindField(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_11__**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
