; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32 }
%struct.rpcrdma_xprt = type { i32 }
%struct.rpcrdma_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @xprt_rdma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_free(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpcrdma_xprt*, align 8
  %5 = alloca %struct.rpcrdma_req*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 0
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  store %struct.rpc_rqst* %8, %struct.rpc_rqst** %3, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(i32 %11)
  store %struct.rpcrdma_xprt* %12, %struct.rpcrdma_xprt** %4, align 8
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %14 = call %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst* %13)
  store %struct.rpcrdma_req* %14, %struct.rpcrdma_req** %5, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %16 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %17 = call i32 @trace_xprtrdma_op_free(%struct.rpc_task* %15, %struct.rpcrdma_req* %16)
  %18 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %24 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %25 = call i32 @frwr_unmap_sync(%struct.rpcrdma_xprt* %23, %struct.rpcrdma_req* %24)
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(i32) #1

declare dso_local %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst*) #1

declare dso_local i32 @trace_xprtrdma_op_free(%struct.rpc_task*, %struct.rpcrdma_req*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @frwr_unmap_sync(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
