; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_add_nondir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_add_nondir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.inode*, %struct.dentry*, %struct.inode*, i32, i32)* @btrfs_add_nondir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_add_nondir(%struct.btrfs_trans_handle* %0, %struct.inode* %1, %struct.dentry* %2, %struct.inode* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store %struct.inode* %3, %struct.inode** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @btrfs_add_link(%struct.btrfs_trans_handle* %14, %struct.inode* %15, %struct.inode* %16, i32 %20, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EEXIST, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %30, %6
  %34 = load i32, i32* %13, align 4
  ret i32 %34
}

declare dso_local i32 @btrfs_add_link(%struct.btrfs_trans_handle*, %struct.inode*, %struct.inode*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
