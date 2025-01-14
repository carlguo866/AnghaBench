; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pubsub.c_publishCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pubsub.c_publishCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PROPAGATE_REPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @publishCommand(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pubsubPublishMessage(i32 %8, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clusterPropagatePublish(i32 %22, i32 %27)
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = load i32, i32* @PROPAGATE_REPL, align 4
  %32 = call i32 @forceCommandPropagation(%struct.TYPE_6__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %17
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @addReplyLongLong(%struct.TYPE_6__* %34, i32 %35)
  ret void
}

declare dso_local i32 @pubsubPublishMessage(i32, i32) #1

declare dso_local i32 @clusterPropagatePublish(i32, i32) #1

declare dso_local i32 @forceCommandPropagation(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
