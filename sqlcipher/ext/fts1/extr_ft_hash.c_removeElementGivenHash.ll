; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_ft_hash.c_removeElementGivenHash.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_ft_hash.c_removeElementGivenHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32 (%struct.TYPE_10__*)*, i64, %struct._ht* }
%struct._ht = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @removeElementGivenHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removeElementGivenHash(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._ht*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %19, align 8
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = ptrtoint %struct.TYPE_10__* %23 to i64
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %20, %12
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %39, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load %struct._ht*, %struct._ht** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct._ht, %struct._ht* %43, i64 %45
  store %struct._ht* %46, %struct._ht** %7, align 8
  %47 = load %struct._ht*, %struct._ht** %7, align 8
  %48 = getelementptr inbounds %struct._ht, %struct._ht* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = icmp eq %struct.TYPE_10__* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load %struct._ht*, %struct._ht** %7, align 8
  %57 = getelementptr inbounds %struct._ht, %struct._ht* %56, i32 0, i32 1
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  br label %58

58:                                               ; preds = %52, %40
  %59 = load %struct._ht*, %struct._ht** %7, align 8
  %60 = getelementptr inbounds %struct._ht, %struct._ht* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = load %struct._ht*, %struct._ht** %7, align 8
  %64 = getelementptr inbounds %struct._ht, %struct._ht* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct._ht*, %struct._ht** %7, align 8
  %69 = getelementptr inbounds %struct._ht, %struct._ht* %68, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %69, align 8
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 %83(%struct.TYPE_10__* %86)
  br label %88

88:                                               ; preds = %80, %75, %70
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = call i32 %91(%struct.TYPE_10__* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %88
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = call i32 @HashClear(%struct.TYPE_11__* %115)
  br label %117

117:                                              ; preds = %102, %88
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HashClear(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
