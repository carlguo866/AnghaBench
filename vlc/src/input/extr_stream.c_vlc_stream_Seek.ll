; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_Seek.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { {}* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_stream_Seek(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = bitcast %struct.TYPE_7__* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %66

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = icmp sle i64 %26, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %25
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %35
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = call i32 @block_Release(%struct.TYPE_9__* %61)
  br label %63

63:                                               ; preds = %58, %35
  %64 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %64, i32* %3, align 4
  br label %121

65:                                               ; preds = %25, %19
  br label %75

66:                                               ; preds = %2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %121

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %65
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = bitcast {}** %77 to i32 (%struct.TYPE_7__*, i64)**
  %79 = load i32 (%struct.TYPE_7__*, i64)*, i32 (%struct.TYPE_7__*, i64)** %78, align 8
  %80 = icmp eq i32 (%struct.TYPE_7__*, i64)* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %82, i32* %3, align 4
  br label %121

83:                                               ; preds = %75
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = bitcast {}** %85 to i32 (%struct.TYPE_7__*, i64)**
  %87 = load i32 (%struct.TYPE_7__*, i64)*, i32 (%struct.TYPE_7__*, i64)** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 %87(%struct.TYPE_7__* %88, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @VLC_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %121

96:                                               ; preds = %83
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = call i32 @block_Release(%struct.TYPE_9__* %105)
  br label %107

107:                                              ; preds = %102, %96
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = call i32 @block_Release(%struct.TYPE_9__* %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %118, align 8
  br label %119

119:                                              ; preds = %112, %107
  %120 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %94, %81, %72, %63
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @block_Release(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
