; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_submit_bio_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_submit_bio_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.bio*, i32, i64, i32)* @__btrfs_submit_bio_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_submit_bio_start(%struct.inode* %0, i32 %1, %struct.bio* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_root*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bio* %2, %struct.bio** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load %struct.bio*, %struct.bio** %9, align 8
  %22 = call i32 @btrfs_csum_one_bio(%struct.btrfs_root* %19, %struct.inode* %20, %struct.bio* %21, i32 0, i32 0)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @BUG_ON(i32 %23)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_csum_one_bio(%struct.btrfs_root*, %struct.inode*, %struct.bio*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
