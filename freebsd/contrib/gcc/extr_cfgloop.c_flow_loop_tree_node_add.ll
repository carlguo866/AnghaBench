; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_tree_node_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_tree_node_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { %struct.loop*, %struct.loop*, %struct.loop* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_loop_tree_node_add(%struct.loop* %0, %struct.loop* %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.loop*, align 8
  store %struct.loop* %0, %struct.loop** %3, align 8
  store %struct.loop* %1, %struct.loop** %4, align 8
  %5 = load %struct.loop*, %struct.loop** %3, align 8
  %6 = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 1
  %7 = load %struct.loop*, %struct.loop** %6, align 8
  %8 = load %struct.loop*, %struct.loop** %4, align 8
  %9 = getelementptr inbounds %struct.loop, %struct.loop* %8, i32 0, i32 2
  store %struct.loop* %7, %struct.loop** %9, align 8
  %10 = load %struct.loop*, %struct.loop** %4, align 8
  %11 = load %struct.loop*, %struct.loop** %3, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 1
  store %struct.loop* %10, %struct.loop** %12, align 8
  %13 = load %struct.loop*, %struct.loop** %3, align 8
  %14 = load %struct.loop*, %struct.loop** %4, align 8
  %15 = getelementptr inbounds %struct.loop, %struct.loop* %14, i32 0, i32 0
  store %struct.loop* %13, %struct.loop** %15, align 8
  %16 = load %struct.loop*, %struct.loop** %4, align 8
  %17 = call i32 @establish_preds(%struct.loop* %16)
  ret void
}

declare dso_local i32 @establish_preds(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
