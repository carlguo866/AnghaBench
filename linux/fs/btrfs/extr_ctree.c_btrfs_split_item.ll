; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_split_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_split_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_split_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_key* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store %struct.btrfs_key* %3, %struct.btrfs_key** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %16 = call i32 @setup_leaf_for_split(%struct.btrfs_trans_handle* %13, %struct.btrfs_root* %14, %struct.btrfs_path* %15, i32 4)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %5
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %23 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @split_item(%struct.btrfs_path* %22, %struct.btrfs_key* %23, i64 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %19
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @setup_leaf_for_split(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @split_item(%struct.btrfs_path*, %struct.btrfs_key*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
