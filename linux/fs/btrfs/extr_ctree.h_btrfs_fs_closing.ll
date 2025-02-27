; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.h_btrfs_fs_closing.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.h_btrfs_fs_closing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }

@BTRFS_FS_CLOSING_START = common dso_local global i32 0, align 4
@BTRFS_FS_CLOSING_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*)* @btrfs_fs_closing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_fs_closing(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %4 = load i32, i32* @BTRFS_FS_CLOSING_START, align 4
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 0
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @BTRFS_FS_CLOSING_DONE, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 2, i32* %2, align 4
  br label %18

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
