; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_inode_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_inode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { i32 }

@NFS_INO_FSCACHE_LOCK = common dso_local global i32 0, align 4
@nfs_fscache_wait_bit = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @nfs_fscache_inode_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_fscache_inode_lock(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.nfs_inode* @NFS_I(%struct.inode* %4)
  store %struct.nfs_inode* %5, %struct.nfs_inode** %3, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i32, i32* @NFS_INO_FSCACHE_LOCK, align 4
  %8 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %8, i32 0, i32 0
  %10 = call i64 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %13, i32 0, i32 0
  %15 = load i32, i32* @NFS_INO_FSCACHE_LOCK, align 4
  %16 = load i32, i32* @nfs_fscache_wait_bit, align 4
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @wait_on_bit(i32* %14, i32 %15, i32 %16, i32 %17)
  br label %6

19:                                               ; preds = %6
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
