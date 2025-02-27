; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_FindWorkerNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_FindWorkerNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@WORKER_LENGTH = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @FindWorkerNode(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %12 = call i32* (...) @GetWorkerNodeHash()
  store i32* %12, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %13 = call i64 @palloc0(i32 8)
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @WORKER_LENGTH, align 4
  %20 = call i32 @strlcpy(i32 %17, i8* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = bitcast %struct.TYPE_5__* %24 to i8*
  store i8* %25, i8** %9, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @HASH_FIND, align 4
  %29 = call i64 @hash_search(i32* %26, i8* %27, i32 %28, i32* %8)
  %30 = inttoptr i64 %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = call i64 @palloc(i32 8)
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %11, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = call i32 @memcpy(%struct.TYPE_5__* %36, %struct.TYPE_5__* %37, i32 8)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %3, align 8
  br label %41

40:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %42
}

declare dso_local i32* @GetWorkerNodeHash(...) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
