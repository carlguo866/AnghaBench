; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/simple/extr_simple_reader.c_simple_reader_close.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/simple/extr_simple_reader.c_simple_reader_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32* }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @simple_reader_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_reader_close(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  br label %10

10:                                               ; preds = %47, %1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %18, i64 %23
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %4, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %15
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @vc_container_io_close(i64 %41)
  br label %43

43:                                               ; preds = %34, %15
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i32 @vc_container_free_track(%struct.TYPE_13__* %44, %struct.TYPE_12__* %45)
  br label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %10

52:                                               ; preds = %10
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @free(i32* %53)
  %55 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  ret i32 %55
}

declare dso_local i32 @vc_container_io_close(i64) #1

declare dso_local i32 @vc_container_free_track(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
