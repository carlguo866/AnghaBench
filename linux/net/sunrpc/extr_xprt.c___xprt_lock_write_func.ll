; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_lock_write_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_lock_write_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.rpc_xprt = type { %struct.rpc_task* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, i8*)* @__xprt_lock_write_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xprt_lock_write_func(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.rpc_xprt*
  store %struct.rpc_xprt* %7, %struct.rpc_xprt** %5, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %9, i32 0, i32 0
  store %struct.rpc_task* %8, %struct.rpc_task** %10, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
