; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_need_reserve_reloc_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_need_reserve_reloc_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.TYPE_2__, i32, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { i32 }

@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*)* @need_reserve_reloc_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_reserve_reloc_root(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %5 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %5, i32 0, i32 3
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_fs_info* %7, %struct.btrfs_fs_info** %4, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 2
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BTRFS_TREE_RELOC_OBJECTID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %18, %12, %1
  store i32 0, i32* %2, align 4
  br label %32

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
