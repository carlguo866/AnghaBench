; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.h_xfs_finish_inode_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.h_xfs_finish_inode_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }

@XFS_INEW = common dso_local global i32 0, align 4
@__XFS_INEW_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*)* @xfs_finish_inode_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_finish_inode_setup(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %3 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %4 = load i32, i32* @XFS_INEW, align 4
  %5 = call i32 @xfs_iflags_clear(%struct.xfs_inode* %3, i32 %4)
  %6 = call i32 (...) @barrier()
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %8 = call i32 @VFS_I(%struct.xfs_inode* %7)
  %9 = call i32 @unlock_new_inode(i32 %8)
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 0
  %12 = load i32, i32* @__XFS_INEW_BIT, align 4
  %13 = call i32 @wake_up_bit(i32* %11, i32 %12)
  ret void
}

declare dso_local i32 @xfs_iflags_clear(%struct.xfs_inode*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @unlock_new_inode(i32) #1

declare dso_local i32 @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
