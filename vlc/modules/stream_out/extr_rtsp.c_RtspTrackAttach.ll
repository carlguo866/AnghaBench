; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtsp.c_RtspTrackAttach.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtsp.c_RtspTrackAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RtspTrackAttach(%struct.TYPE_9__* %0, i8* %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @vlc_mutex_lock(i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.TYPE_11__* @RtspClientGet(%struct.TYPE_9__* %23, i8* %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %14, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %27 = icmp eq %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %131

29:                                               ; preds = %6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %15, align 8
  br label %58

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %30

58:                                               ; preds = %47, %30
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dup_socket(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %100

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 -1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %77 = load i32*, i32** %10, align 8
  store i32* %77, i32** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 5
  %79 = load i32*, i32** %9, align 8
  store i32* %79, i32** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %81 = call i32 @vlc_rand_bytes(i64* %80, i32 8)
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %83 = call i32 @vlc_rand_bytes(i64* %82, i32 8)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = call i32 @TAB_APPEND(i32 %86, %struct.TYPE_10__* %89, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %17)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 -1
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %15, align 8
  br label %100

100:                                              ; preds = %71, %61
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ntohl(i64 %103)
  %105 = load i32*, i32** %11, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %12, align 8
  store i64 %108, i64* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %129

114:                                              ; preds = %100
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @rtp_add_sink(i32* %117, i32 %120, i32 0, i64* %18)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %18, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  br label %129

129:                                              ; preds = %114, %100
  %130 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %129, %28
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = call i32 @vlc_mutex_unlock(i32* %133)
  %135 = load i32, i32* %13, align 4
  ret i32 %135
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @RtspClientGet(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @dup_socket(i32) #1

declare dso_local i32 @vlc_rand_bytes(i64*, i32) #1

declare dso_local i32 @TAB_APPEND(i32, %struct.TYPE_10__*, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @rtp_add_sink(i32*, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
