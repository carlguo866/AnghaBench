; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c_test_case_3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c_test_case_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_map_tree = type { i32 }

@SZ_8K = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_map_tree*)* @test_case_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_case_3(%struct.btrfs_fs_info* %0, %struct.extent_map_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.extent_map_tree*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.extent_map_tree* %1, %struct.extent_map_tree** %5, align 8
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %8 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %9 = call i32 @__test_case_3(%struct.btrfs_fs_info* %7, %struct.extent_map_tree* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %16 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %17 = load i32, i32* @SZ_8K, align 4
  %18 = call i32 @__test_case_3(%struct.btrfs_fs_info* %15, %struct.extent_map_tree* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %14
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %25 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %26 = load i32, i32* @SZ_1K, align 4
  %27 = mul nsw i32 12, %26
  %28 = call i32 @__test_case_3(%struct.btrfs_fs_info* %24, %struct.extent_map_tree* %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %21, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @__test_case_3(%struct.btrfs_fs_info*, %struct.extent_map_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
