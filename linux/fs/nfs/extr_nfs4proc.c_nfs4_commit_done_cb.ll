; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_commit_done_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_commit_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_commit_data = type { %struct.inode* }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_commit_data*)* @nfs4_commit_done_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_commit_done_cb(%struct.rpc_task* %0, %struct.nfs_commit_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_commit_data*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_commit_data* %1, %struct.nfs_commit_data** %5, align 8
  %7 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %11 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_nfs4_commit(%struct.nfs_commit_data* %10, i32 %13)
  %15 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call i32 @NFS_SERVER(%struct.inode* %16)
  %18 = call i32 @nfs4_async_handle_error(%struct.rpc_task* %15, i32 %17, i32* null, i32* null)
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %24 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %23)
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @trace_nfs4_commit(%struct.nfs_commit_data*, i32) #1

declare dso_local i32 @nfs4_async_handle_error(%struct.rpc_task*, i32, i32*, i32*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
