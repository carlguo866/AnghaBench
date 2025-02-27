; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_free_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32 }
%struct.rpc_rqst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.rpc_rqst*)* @xprt_free_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_free_slot(%struct.rpc_xprt* %0, %struct.rpc_rqst* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %4, align 8
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %10 = call i32 @xprt_dynamic_free_slot(%struct.rpc_xprt* %8, %struct.rpc_rqst* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %14 = call i32 @memset(%struct.rpc_rqst* %13, i32 0, i32 4)
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %15, i32 0, i32 0
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 2
  %19 = call i32 @list_add(i32* %16, i32* %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %21, i32 0, i32 1
  %23 = call i32 @rpc_wake_up_next(i32* %22)
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xprt_dynamic_free_slot(%struct.rpc_xprt*, %struct.rpc_rqst*) #1

declare dso_local i32 @memset(%struct.rpc_rqst*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @rpc_wake_up_next(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
