; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_range_tree.c_range_tree_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_range_tree.c_range_tree_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_tree_swap(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %4, align 8
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call i32 @range_tree_space(%struct.TYPE_5__* %7)
  %9 = call i32 @ASSERT0(i32 %8)
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @avl_numnodes(i32* %12)
  %14 = call i32 @ASSERT0(i32 %13)
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %21, align 8
  ret void
}

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @range_tree_space(%struct.TYPE_5__*) #1

declare dso_local i32 @avl_numnodes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
