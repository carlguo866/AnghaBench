; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_detach_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_detach_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.tipc_node = type { i32, i32** }
%struct.link = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@tipc_net = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_node_detach_link(%struct.tipc_node* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca %struct.link*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %5 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %6 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %5, i32 0, i32 1
  %7 = load i32**, i32*** %6, align 8
  %8 = load %struct.link*, %struct.link** %4, align 8
  %9 = getelementptr inbounds %struct.link, %struct.link* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32*, i32** %7, i64 %12
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tipc_net, i32 0, i32 0), align 8
  %15 = load %struct.link*, %struct.link** %4, align 8
  %16 = getelementptr inbounds %struct.link, %struct.link* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @tipc_zone(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %25 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  ret void
}

declare dso_local i64 @tipc_zone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
