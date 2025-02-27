; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ng_device_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ng_device_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DBG = common dso_local global i32 0, align 4
@ngd_unit = common dso_local global i32 0, align 4
@M_NETGRAPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_device_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_device_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @NG_HOOK_NODE(i32 %4)
  %6 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* @DBG, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @destroy_dev(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = call i32 @mtx_destroy(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = call i32 @IF_DRAIN(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @mtx_destroy(i32* %20)
  %22 = load i32, i32* @ngd_unit, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free_unr(i32 %22, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = load i32, i32* @M_NETGRAPH, align 4
  %29 = call i32 @free(%struct.TYPE_5__* %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @NG_HOOK_NODE(i32 %30)
  %32 = call i32 @ng_rmnode_self(i32 %31)
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @IF_DRAIN(%struct.TYPE_6__*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
