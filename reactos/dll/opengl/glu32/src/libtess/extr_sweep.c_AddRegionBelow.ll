; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_AddRegionBelow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_AddRegionBelow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_10__*)* @AddRegionBelow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @AddRegionBelow(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %8 = call i64 @memAlloc(i32 40)
  %9 = inttoptr i64 %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @longjmp(i32 %15, i32 1)
  br label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = call i32* @dictInsertBefore(i32 %23, i32* %26, %struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %17
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @longjmp(i32 %38, i32 1)
  br label %40

40:                                               ; preds = %35, %17
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %53
}

declare dso_local i64 @memAlloc(i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32* @dictInsertBefore(i32, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
