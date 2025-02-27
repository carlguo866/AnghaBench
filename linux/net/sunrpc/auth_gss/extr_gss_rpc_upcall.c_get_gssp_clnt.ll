; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_get_gssp_clnt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_upcall.c_get_gssp_clnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.sunrpc_net = type { i32, %struct.rpc_clnt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.sunrpc_net*)* @get_gssp_clnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @get_gssp_clnt(%struct.sunrpc_net* %0) #0 {
  %2 = alloca %struct.sunrpc_net*, align 8
  %3 = alloca %struct.rpc_clnt*, align 8
  store %struct.sunrpc_net* %0, %struct.sunrpc_net** %2, align 8
  %4 = load %struct.sunrpc_net*, %struct.sunrpc_net** %2, align 8
  %5 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.sunrpc_net*, %struct.sunrpc_net** %2, align 8
  %8 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %7, i32 0, i32 1
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  store %struct.rpc_clnt* %9, %struct.rpc_clnt** %3, align 8
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %11 = icmp ne %struct.rpc_clnt* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.sunrpc_net*, %struct.sunrpc_net** %2, align 8
  %18 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %3, align 8
  ret %struct.rpc_clnt* %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
