; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_ipcns_notifier.c_cond_register_ipcns_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_ipcns_notifier.c_cond_register_ipcns_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ipcns_callback = common dso_local global i32 0, align 4
@IPCNS_CALLBACK_PRI = common dso_local global i32 0, align 4
@ipcns_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cond_register_ipcns_notifier(%struct.ipc_namespace* %0) #0 {
  %2 = alloca %struct.ipc_namespace*, align 8
  %3 = alloca i32, align 4
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %2, align 8
  %4 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %5 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %4, i32 0, i32 1
  %6 = call i32 @memset(%struct.TYPE_3__* %5, i32 0, i32 8)
  %7 = load i32, i32* @ipcns_callback, align 4
  %8 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %9 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @IPCNS_CALLBACK_PRI, align 4
  %12 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %13 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %16 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %15, i32 0, i32 1
  %17 = call i32 @blocking_notifier_chain_cond_register(i32* @ipcns_chain, %struct.TYPE_3__* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %22 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @blocking_notifier_chain_cond_register(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
