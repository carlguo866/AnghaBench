; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_revoke_delegation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_delegation.c_nfs_revoke_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*)* @nfs_revoke_delegation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_revoke_delegation(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfs_delegation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nfs_delegation* @rcu_dereference(i32 %12)
  store %struct.nfs_delegation* %13, %struct.nfs_delegation** %5, align 8
  %14 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %15 = icmp eq %struct.nfs_delegation* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %37

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %21, i32 0, i32 0
  %23 = call i32 @nfs4_stateid_copy(i32* %6, i32* %22)
  store i32* %6, i32** %4, align 8
  br label %32

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %26, i32 0, i32 0
  %28 = call i32 @nfs4_stateid_match(i32* %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %37

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @NFS_SERVER(%struct.inode* %33)
  %35 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %36 = call i32 @nfs_mark_delegation_revoked(i32 %34, %struct.nfs_delegation* %35)
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %30, %16
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @nfs_inode_find_state_and_recover(%struct.inode* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs4_stateid_match(i32*, i32*) #1

declare dso_local i32 @nfs_mark_delegation_revoked(i32, %struct.nfs_delegation*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs_inode_find_state_and_recover(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
