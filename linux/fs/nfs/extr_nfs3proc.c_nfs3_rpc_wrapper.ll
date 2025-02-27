; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_rpc_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_rpc_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_message = type { i32 }

@EJUKEBOX = common dso_local global i32 0, align 4
@NFS_JUKEBOX_RETRY_TIME = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.rpc_message*, i32)* @nfs3_rpc_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_rpc_wrapper(%struct.rpc_clnt* %0, %struct.rpc_message* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %23, %3
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %10 = load %struct.rpc_message*, %struct.rpc_message** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rpc_call_sync(%struct.rpc_clnt* %9, %struct.rpc_message* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @EJUKEBOX, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %28

18:                                               ; preds = %8
  %19 = load i32, i32* @NFS_JUKEBOX_RETRY_TIME, align 4
  %20 = call i32 @freezable_schedule_timeout_killable_unsafe(i32 %19)
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @fatal_signal_pending(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %8, label %28

28:                                               ; preds = %23, %17
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #1

declare dso_local i32 @freezable_schedule_timeout_killable_unsafe(i32) #1

declare dso_local i32 @fatal_signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
