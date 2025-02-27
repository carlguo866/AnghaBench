; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_lookup_inode_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_lookup_inode_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32 }
%struct.btrfs_inode_ref = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.TYPE_2__ = type { i32 }

@INVALID_INODE = common dso_local global i32 0, align 4
@BTRFS_INODE_REF_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root_item*, i32, %struct.btrfs_inode_ref*, i8*)* @btrfs_lookup_inode_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_lookup_inode_ref(%struct.btrfs_root_item* %0, i32 %1, %struct.btrfs_inode_ref* %2, i8* %3) #0 {
  %5 = alloca %struct.btrfs_root_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_inode_ref*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.btrfs_path, align 4
  %10 = alloca %struct.btrfs_inode_ref*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.btrfs_inode_ref* %2, %struct.btrfs_inode_ref** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @INVALID_INODE, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i32 @init_path(%struct.btrfs_path* %9)
  %14 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @BTRFS_INODE_REF_KEY, align 4
  %17 = call i64 @BtrFsSearchTreeType(%struct.btrfs_root_item* %14, i32 %15, i32 %16, %struct.btrfs_path* %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = call i64 @path_current_data(%struct.btrfs_path* %9)
  %21 = inttoptr i64 %20 to %struct.btrfs_inode_ref*
  store %struct.btrfs_inode_ref* %21, %struct.btrfs_inode_ref** %10, align 8
  %22 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %7, align 8
  %23 = icmp ne %struct.btrfs_inode_ref* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %7, align 8
  %26 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %10, align 8
  %27 = bitcast %struct.btrfs_inode_ref* %25 to i8*
  %28 = bitcast %struct.btrfs_inode_ref* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %24, %19
  %30 = call %struct.TYPE_2__* @path_current_disk_key(%struct.btrfs_path* %9)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %4
  %34 = call i32 @free_path(%struct.btrfs_path* %9)
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local i32 @init_path(%struct.btrfs_path*) #1

declare dso_local i64 @BtrFsSearchTreeType(%struct.btrfs_root_item*, i32, i32, %struct.btrfs_path*) #1

declare dso_local i64 @path_current_data(%struct.btrfs_path*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_2__* @path_current_disk_key(%struct.btrfs_path*) #1

declare dso_local i32 @free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
