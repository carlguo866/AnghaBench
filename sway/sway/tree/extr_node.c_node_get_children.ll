; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_children.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_node.c_node_get_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @node_get_children(%struct.sway_node* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sway_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  %4 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %5 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %20 [
    i32 131, label %7
    i32 128, label %13
    i32 130, label %19
    i32 129, label %19
  ]

7:                                                ; preds = %1
  %8 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %9 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %2, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %15 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %2, align 8
  br label %21

19:                                               ; preds = %1, %1
  store i32* null, i32** %2, align 8
  br label %21

20:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %21

21:                                               ; preds = %20, %19, %13, %7
  %22 = load i32*, i32** %2, align 8
  ret i32* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
