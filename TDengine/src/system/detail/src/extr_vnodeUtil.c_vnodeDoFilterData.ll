; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeDoFilterData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeUtil.c_vnodeDoFilterData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*, i8*, i8*)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeDoFilterData(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %77, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %23
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = mul i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %27, i64 %34
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @isNull(i8* %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %81

45:                                               ; preds = %19
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %49

49:                                               ; preds = %69, %45
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %57
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %12, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64 (%struct.TYPE_12__*, i8*, i8*)*, i64 (%struct.TYPE_12__*, i8*, i8*)** %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 %61(%struct.TYPE_12__* %62, i8* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %72

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %49

72:                                               ; preds = %67, %49
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %81

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %13

80:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %75, %44
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @isNull(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
