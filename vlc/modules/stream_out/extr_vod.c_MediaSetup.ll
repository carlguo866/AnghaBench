; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_vod.c_MediaSetup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_vod.c_MediaSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_13__*, i8*)* @MediaSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MediaSetup(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %64

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i32 @VLC_OBJECT(%struct.TYPE_11__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32* @RtspSetup(i32 %23, %struct.TYPE_13__* %24, i8* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %64

36:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %46, i64 %48
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %10, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @RtspAddId(i32* %53, i32* null, i32 0, i32 %57, i32 -1)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %37

64:                                               ; preds = %20, %35, %37
  ret void
}

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32* @RtspSetup(i32, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_11__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @RtspAddId(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
