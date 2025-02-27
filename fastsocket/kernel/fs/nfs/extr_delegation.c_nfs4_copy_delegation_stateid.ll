; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs4_copy_delegation_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs4_copy_delegation_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.nfs_delegation = type { i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_copy_delegation_stateid(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_inode*, align 8
  %8 = alloca %struct.nfs_delegation*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.nfs_inode* @NFS_I(%struct.inode* %10)
  store %struct.nfs_inode* %11, %struct.nfs_inode** %7, align 8
  %12 = load i32, i32* @FMODE_READ, align 4
  %13 = load i32, i32* @FMODE_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nfs_delegation* @rcu_dereference(i32 %20)
  store %struct.nfs_delegation* %21, %struct.nfs_delegation** %8, align 8
  %22 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %23 = icmp ne %struct.nfs_delegation* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %26 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %24, %3
  %33 = phi i1 [ false, %3 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %40 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %39, i32 0, i32 1
  %41 = call i32 @nfs4_stateid_copy(i32* %38, i32* %40)
  %42 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %43 = call i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation* %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
