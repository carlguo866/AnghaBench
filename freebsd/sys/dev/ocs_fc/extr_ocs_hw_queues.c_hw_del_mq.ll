; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_hw_del_mq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_hw_del_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_del_mq(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = icmp ne %struct.TYPE_11__* %3, null
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @ocs_list_remove(i32* %9, %struct.TYPE_11__* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32*, i32** %20, i64 %23
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i32 @ocs_free(i32 %33, %struct.TYPE_11__* %34, i32 16)
  br label %36

36:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @ocs_list_remove(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
