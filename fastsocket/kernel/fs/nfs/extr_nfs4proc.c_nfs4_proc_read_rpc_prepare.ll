; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_read_rpc_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_read_rpc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_read_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, %struct.nfs_read_data*)* @nfs4_proc_read_rpc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_read_rpc_prepare(%struct.rpc_task* %0, %struct.nfs_read_data* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.nfs_read_data*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.nfs_read_data* %1, %struct.nfs_read_data** %4, align 8
  %5 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %6 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NFS_SERVER(i32 %9)
  %11 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %18 = call i64 @nfs4_setup_sequence(i32 %10, i32* %13, i32* %16, %struct.rpc_task* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %23 = call i32 @rpc_call_start(%struct.rpc_task* %22)
  %24 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FMODE_READ, align 4
  %36 = call i32 @nfs4_set_rw_stateid(i32* %26, i32 %30, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local i32 @NFS_SERVER(i32) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

declare dso_local i32 @nfs4_set_rw_stateid(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
