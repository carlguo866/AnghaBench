; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_rbtree.c_ngx_rbtree_next.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_rbtree.c_ngx_rbtree_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ngx_rbtree_next(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = icmp ne %struct.TYPE_10__* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = call %struct.TYPE_10__* @ngx_rbtree_min(%struct.TYPE_10__* %20, %struct.TYPE_10__* %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %3, align 8
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %6, align 8
  br label %27

27:                                               ; preds = %43, %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %8, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = icmp eq %struct.TYPE_10__* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %45

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = icmp eq %struct.TYPE_10__* %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %3, align 8
  br label %45

43:                                               ; preds = %35
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %5, align 8
  br label %27

45:                                               ; preds = %41, %34, %17
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %46
}

declare dso_local %struct.TYPE_10__* @ngx_rbtree_min(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
