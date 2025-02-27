; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_CountPrimariesWithMetadata.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_CountPrimariesWithMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CountPrimariesWithMetadata() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i64 0, i64* %1, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  %5 = call i32* (...) @GetWorkerNodeHash()
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @hash_seq_init(i32* %3, i32* %6)
  br label %8

8:                                                ; preds = %23, %0
  %9 = call %struct.TYPE_4__* @hash_seq_search(i32* %3)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %2, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = call i64 @NodeIsPrimary(%struct.TYPE_4__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, i64* %1, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %20, %16, %11
  br label %8

24:                                               ; preds = %8
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

declare dso_local i32* @GetWorkerNodeHash(...) #1

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @hash_seq_search(i32*) #1

declare dso_local i64 @NodeIsPrimary(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
