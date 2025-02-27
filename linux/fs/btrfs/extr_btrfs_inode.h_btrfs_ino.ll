; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_btrfs_inode.h_btrfs_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_btrfs_inode.h_btrfs_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_inode*)* @btrfs_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_ino(%struct.btrfs_inode* %0) #0 {
  %2 = alloca %struct.btrfs_inode*, align 8
  %3 = alloca i64, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %2, align 8
  %4 = load %struct.btrfs_inode*, %struct.btrfs_inode** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.btrfs_inode*, %struct.btrfs_inode** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %10, %1
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %2, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %17, %10
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
