; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_put_req_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_put_req_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_req_map = type { i32 }

@svc_rdma_map_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_put_req_map(%struct.svc_rdma_req_map* %0) #0 {
  %2 = alloca %struct.svc_rdma_req_map*, align 8
  store %struct.svc_rdma_req_map* %0, %struct.svc_rdma_req_map** %2, align 8
  %3 = load i32, i32* @svc_rdma_map_cachep, align 4
  %4 = load %struct.svc_rdma_req_map*, %struct.svc_rdma_req_map** %2, align 8
  %5 = call i32 @kmem_cache_free(i32 %3, %struct.svc_rdma_req_map* %4)
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.svc_rdma_req_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
