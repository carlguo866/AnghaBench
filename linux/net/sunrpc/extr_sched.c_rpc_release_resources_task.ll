; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_release_resources_task.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_release_resources_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @rpc_release_resources_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_release_resources_task(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %3 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %4 = call i32 @xprt_release(%struct.rpc_task* %3)
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @put_cred(i32* %14)
  %16 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %21 = call i32 @rpc_task_release_client(%struct.rpc_task* %20)
  ret void
}

declare dso_local i32 @xprt_release(%struct.rpc_task*) #1

declare dso_local i32 @put_cred(i32*) #1

declare dso_local i32 @rpc_task_release_client(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
