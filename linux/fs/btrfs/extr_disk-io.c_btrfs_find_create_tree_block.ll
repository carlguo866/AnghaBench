; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_find_create_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_find_create_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_fs_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %7 = call i64 @btrfs_is_testing(%struct.btrfs_fs_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.extent_buffer* @alloc_test_extent_buffer(%struct.btrfs_fs_info* %10, i32 %11)
  store %struct.extent_buffer* %12, %struct.extent_buffer** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.extent_buffer* @alloc_extent_buffer(%struct.btrfs_fs_info* %14, i32 %15)
  store %struct.extent_buffer* %16, %struct.extent_buffer** %3, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  ret %struct.extent_buffer* %18
}

declare dso_local i64 @btrfs_is_testing(%struct.btrfs_fs_info*) #1

declare dso_local %struct.extent_buffer* @alloc_test_extent_buffer(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.extent_buffer* @alloc_extent_buffer(%struct.btrfs_fs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
