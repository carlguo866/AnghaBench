; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterDelNode.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterDelNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterDelNode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @dictGetSafeIterator(i32 %8)
  store i32* %9, i32** %3, align 8
  br label %10

10:                                               ; preds = %21, %20, %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @dictNext(i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @dictGetVal(i32* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %10

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @clusterNodeDelFailureReport(i32* %22, i32* %23)
  br label %10

25:                                               ; preds = %10
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @dictReleaseIterator(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @freeClusterNode(i32* %28)
  ret void
}

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @clusterNodeDelFailureReport(i32*, i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @freeClusterNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
