; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_next_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_next_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i32**, %struct.TYPE_9__**, i64*, i64*, i64*)* @next_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_head(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i32** %2, %struct.TYPE_9__** %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32** %2, i32*** %11, align 8
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %16, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %17, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %21, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %22, align 8
  %32 = load i64*, i64** %15, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %23, align 8
  br label %34

34:                                               ; preds = %109, %7
  %35 = load i64, i64* %21, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %112

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = load i64, i64* %21, align 8
  %43 = call i8* @git_vector_get(%struct.TYPE_8__* %41, i64 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %18, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @git_reference_is_valid_name(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %109

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %105, %51
  %53 = load i64, i64* %22, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %108

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %60 = load i64, i64* %22, align 8
  %61 = call i8* @git_vector_get(%struct.TYPE_8__* %59, i64 %60)
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %19, align 8
  %63 = load i32*, i32** %19, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @git_refspec_src_matches(i32* %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %105

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i64, i64* %23, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %79 = load i64, i64* %23, align 8
  %80 = call i8* @git_vector_get(%struct.TYPE_8__* %78, i64 %79)
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %20, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @git_refspec_src_matches(i32* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %77
  br label %101

89:                                               ; preds = %77
  %90 = load i32*, i32** %20, align 8
  %91 = load i32**, i32*** %11, align 8
  store i32* %90, i32** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %93, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64*, i64** %13, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i64*, i64** %14, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64, i64* %23, align 8
  %99 = add i64 %98, 1
  %100 = load i64*, i64** %15, align 8
  store i64 %99, i64* %100, align 8
  store i32 0, i32* %8, align 4
  br label %114

101:                                              ; preds = %88
  %102 = load i64, i64* %23, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %23, align 8
  br label %71

104:                                              ; preds = %71
  store i64 0, i64* %23, align 8
  br label %105

105:                                              ; preds = %104, %69
  %106 = load i64, i64* %22, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %22, align 8
  br label %52

108:                                              ; preds = %52
  store i64 0, i64* %22, align 8
  br label %109

109:                                              ; preds = %108, %50
  %110 = load i64, i64* %21, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %21, align 8
  br label %34

112:                                              ; preds = %34
  %113 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %89
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i8* @git_vector_get(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @git_reference_is_valid_name(i32) #1

declare dso_local i32 @git_refspec_src_matches(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
