; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h_btrfs_calc_insert_metadata_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h_btrfs_calc_insert_metadata_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i64 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @btrfs_calc_insert_metadata_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %10 = mul nsw i32 %8, %9
  %11 = mul nsw i32 %10, 2
  %12 = load i32, i32* %4, align 4
  %13 = mul i32 %11, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
