; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_check_and_init_root_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_root-tree.c_btrfs_check_and_init_root_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BTRFS_INODE_ROOT_ITEM_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_check_and_init_root_item(%struct.btrfs_root_item* %0) #0 {
  %2 = alloca %struct.btrfs_root_item*, align 8
  %3 = alloca i32, align 4
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %2, align 8
  %4 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @le64_to_cpu(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BTRFS_INODE_ROOT_ITEM_INIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @BTRFS_INODE_ROOT_ITEM_INIT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @cpu_to_le64(i32 %17)
  %19 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %2, align 8
  %23 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %2, align 8
  %25 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
