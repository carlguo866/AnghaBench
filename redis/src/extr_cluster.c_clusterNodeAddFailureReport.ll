; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterNodeAddFailureReport.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterNodeAddFailureReport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterNodeAddFailureReport(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @listRewind(i32* %13, i32* %8)
  br label %15

15:                                               ; preds = %31, %2
  %16 = call %struct.TYPE_9__* @listNext(i32* %8)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = icmp eq %struct.TYPE_11__* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = call i8* (...) @mstime()
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %3, align 4
  br label %43

31:                                               ; preds = %18
  br label %15

32:                                               ; preds = %15
  %33 = call %struct.TYPE_10__* @zmalloc(i32 16)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %36, align 8
  %37 = call i8* (...) @mstime()
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = call i32 @listAddNodeTail(i32* %40, %struct.TYPE_10__* %41)
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @listNext(i32*) #1

declare dso_local i8* @mstime(...) #1

declare dso_local %struct.TYPE_10__* @zmalloc(i32) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
