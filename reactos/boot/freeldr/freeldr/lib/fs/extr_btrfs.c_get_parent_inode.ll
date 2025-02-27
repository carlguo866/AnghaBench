; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_get_parent_inode.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_get_parent_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32 }
%struct.btrfs_inode_item = type { i32 }
%struct.btrfs_disk_key = type { i64, i8*, i64 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_INODE_ITEM_KEY = common dso_local global i8* null, align 8
@INVALID_INODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_root_item*, i64, %struct.btrfs_inode_item*)* @get_parent_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_parent_inode(%struct.btrfs_root_item* %0, i64 %1, %struct.btrfs_inode_item* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.btrfs_root_item*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_inode_item*, align 8
  %8 = alloca %struct.btrfs_disk_key, align 8
  %9 = alloca i64, align 8
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.btrfs_inode_item* %2, %struct.btrfs_inode_item** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %15 = icmp ne %struct.btrfs_inode_item* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %8, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = load i8*, i8** @BTRFS_INODE_ITEM_KEY, align 8
  %20 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %8, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %8, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %5, align 8
  %23 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %24 = call i64 @btrfs_lookup_inode(%struct.btrfs_root_item* %22, %struct.btrfs_disk_key* %8, %struct.btrfs_inode_item* %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i64, i64* @INVALID_INODE, align 8
  store i64 %27, i64* %4, align 8
  br label %58

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %4, align 8
  br label %58

31:                                               ; preds = %3
  %32 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @btrfs_lookup_inode_ref(%struct.btrfs_root_item* %32, i64 %33, i32* null, i32* null)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @INVALID_INODE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @INVALID_INODE, align 8
  store i64 %39, i64* %4, align 8
  br label %58

40:                                               ; preds = %31
  %41 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %42 = icmp ne %struct.btrfs_inode_item* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %8, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  %46 = load i8*, i8** @BTRFS_INODE_ITEM_KEY, align 8
  %47 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %8, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %8, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %5, align 8
  %50 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %51 = call i64 @btrfs_lookup_inode(%struct.btrfs_root_item* %49, %struct.btrfs_disk_key* %8, %struct.btrfs_inode_item* %50, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @INVALID_INODE, align 8
  store i64 %54, i64* %4, align 8
  br label %58

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %53, %38, %29, %26
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @btrfs_lookup_inode(%struct.btrfs_root_item*, %struct.btrfs_disk_key*, %struct.btrfs_inode_item*, i32*) #1

declare dso_local i64 @btrfs_lookup_inode_ref(%struct.btrfs_root_item*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
