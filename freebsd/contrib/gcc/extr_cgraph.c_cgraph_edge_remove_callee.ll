; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_edge_remove_callee.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_edge_remove_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_edge*)* @cgraph_edge_remove_callee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_edge_remove_callee(%struct.cgraph_edge* %0) #0 {
  %2 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %2, align 8
  %3 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %4 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %9 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %17 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %22 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %25 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %27, align 8
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %30 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %35 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %38 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %40, align 8
  br label %41

41:                                               ; preds = %33, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
