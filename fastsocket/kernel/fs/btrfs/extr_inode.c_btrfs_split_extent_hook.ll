; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_split_extent_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_split_extent_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.extent_state*, i32)* @btrfs_split_extent_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_split_extent_hook(%struct.inode* %0, %struct.extent_state* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %8 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EXTENT_DELALLOC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
