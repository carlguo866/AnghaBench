; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_register_param.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_register_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_param = type { i32, i32 }

@sort_chain_graph_abs = common dso_local global i32 0, align 4
@sort_chain_graph_rel = common dso_local global i32 0, align 4
@sort_chain_flat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callchain_register_param(%struct.callchain_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.callchain_param*, align 8
  store %struct.callchain_param* %0, %struct.callchain_param** %3, align 8
  %4 = load %struct.callchain_param*, %struct.callchain_param** %3, align 8
  %5 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 130, label %7
    i32 129, label %11
    i32 132, label %15
    i32 131, label %15
    i32 128, label %19
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @sort_chain_graph_abs, align 4
  %9 = load %struct.callchain_param*, %struct.callchain_param** %3, align 8
  %10 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @sort_chain_graph_rel, align 4
  %13 = load %struct.callchain_param*, %struct.callchain_param** %3, align 8
  %14 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %21

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @sort_chain_flat, align 4
  %17 = load %struct.callchain_param*, %struct.callchain_param** %3, align 8
  %18 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %21

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %1, %19
  store i32 -1, i32* %2, align 4
  br label %22

21:                                               ; preds = %15, %11, %7
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
