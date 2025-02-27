; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.page = type { i32 }
%struct.nfs_readdirargs = type { i32, %struct.page**, i64, i32 }
%struct.rpc_message = type { %struct.rpc_cred*, %struct.nfs_readdirargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_READDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"NFS call  readdir %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply readdir: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.rpc_cred*, i64, %struct.page**, i32, i32)* @nfs_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_readdir(%struct.dentry* %0, %struct.rpc_cred* %1, i64 %2, %struct.page** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.rpc_cred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.nfs_readdirargs, align 8
  %15 = alloca %struct.rpc_message, align 8
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %13, align 8
  %20 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 0
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 1
  %23 = load %struct.page**, %struct.page*** %10, align 8
  store %struct.page** %23, %struct.page*** %22, align 8
  %24 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 2
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %14, i32 0, i32 3
  %27 = load %struct.inode*, %struct.inode** %13, align 8
  %28 = call i32 @NFS_FH(%struct.inode* %27)
  store i32 %28, i32* %26, align 8
  %29 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 0
  %30 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  store %struct.rpc_cred* %30, %struct.rpc_cred** %29, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 1
  store %struct.nfs_readdirargs* %14, %struct.nfs_readdirargs** %31, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %15, i32 0, i32 2
  %33 = load i32*, i32** @nfs_procedures, align 8
  %34 = load i64, i64* @NFSPROC_READDIR, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %32, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = call i32 @NFS_CLIENT(%struct.inode* %39)
  %41 = call i32 @rpc_call_sync(i32 %40, %struct.rpc_message* %15, i32 0)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.inode*, %struct.inode** %13, align 8
  %43 = call i32 @nfs_invalidate_atime(%struct.inode* %42)
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %16, align 4
  ret i32 %46
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_invalidate_atime(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
