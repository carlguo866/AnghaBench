; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeNodeOfFirstSearchPoint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeNodeOfFirstSearchPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64*, %struct.TYPE_7__, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32*)* @rtreeNodeOfFirstSearchPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtreeNodeOfFirstSearchPoint(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 1, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ true, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %16
  %30 = phi i1 [ true, %16 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %29
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %60

55:                                               ; preds = %41
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  br label %60

60:                                               ; preds = %55, %48
  %61 = phi i32 [ %54, %48 ], [ %59, %55 ]
  store i32 %61, i32* %5, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = call i32 @RTREE_OF_CURSOR(%struct.TYPE_8__* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = call i32 @nodeAcquire(i32 %63, i32 %64, i32 0, i64* %70)
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %29
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  ret i32* %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nodeAcquire(i32, i32, i32, i64*) #1

declare dso_local i32 @RTREE_OF_CURSOR(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
