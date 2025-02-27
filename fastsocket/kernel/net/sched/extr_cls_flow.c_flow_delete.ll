; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_flow.c_flow_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.flow_filter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64)* @flow_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_delete(%struct.tcf_proto* %0, i64 %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.flow_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = inttoptr i64 %6 to %struct.flow_filter*
  store %struct.flow_filter* %7, %struct.flow_filter** %5, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %9 = call i32 @tcf_tree_lock(%struct.tcf_proto* %8)
  %10 = load %struct.flow_filter*, %struct.flow_filter** %5, align 8
  %11 = getelementptr inbounds %struct.flow_filter, %struct.flow_filter* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %14 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %13)
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %16 = load %struct.flow_filter*, %struct.flow_filter** %5, align 8
  %17 = call i32 @flow_destroy_filter(%struct.tcf_proto* %15, %struct.flow_filter* %16)
  ret i32 0
}

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #1

declare dso_local i32 @flow_destroy_filter(%struct.tcf_proto*, %struct.flow_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
