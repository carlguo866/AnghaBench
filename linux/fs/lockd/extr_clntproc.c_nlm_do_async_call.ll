; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlm_do_async_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlm_do_async_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { i32 }
%struct.rpc_message = type { i32 }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_rqst*, i32, %struct.rpc_message*, %struct.rpc_call_ops*)* @nlm_do_async_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_do_async_call(%struct.nlm_rqst* %0, i32 %1, %struct.rpc_message* %2, %struct.rpc_call_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlm_rqst*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_message*, align 8
  %9 = alloca %struct.rpc_call_ops*, align 8
  %10 = alloca %struct.rpc_task*, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rpc_message* %2, %struct.rpc_message** %8, align 8
  store %struct.rpc_call_ops* %3, %struct.rpc_call_ops** %9, align 8
  %11 = load %struct.nlm_rqst*, %struct.nlm_rqst** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.rpc_message*, %struct.rpc_message** %8, align 8
  %14 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %9, align 8
  %15 = call %struct.rpc_task* @__nlm_async_call(%struct.nlm_rqst* %11, i32 %12, %struct.rpc_message* %13, %struct.rpc_call_ops* %14)
  store %struct.rpc_task* %15, %struct.rpc_task** %10, align 8
  %16 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %17 = call i64 @IS_ERR(%struct.rpc_task* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.rpc_task* %20)
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load %struct.rpc_task*, %struct.rpc_task** %10, align 8
  %24 = call i32 @rpc_put_task(%struct.rpc_task* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local %struct.rpc_task* @__nlm_async_call(%struct.nlm_rqst*, i32, %struct.rpc_message*, %struct.rpc_call_ops*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
