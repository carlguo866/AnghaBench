; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_free_tree_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_free_tree_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@free_tree_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@free_tree_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @free_tree_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tree_node(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @free_tree_head, i32 0, i32 1), align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @free_tree_head, i32 0, i32 1), align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.TYPE_4__* @free_tree_head, %struct.TYPE_4__** %10, align 8
  %11 = load i32, i32* @free_tree_nodes, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @free_tree_nodes, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
