; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_ecryptfs_kernel.h_ecryptfs_set_superblock_private.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_ecryptfs_kernel.h_ecryptfs_set_superblock_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.ecryptfs_sb_info* }
%struct.ecryptfs_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ecryptfs_sb_info*)* @ecryptfs_set_superblock_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_set_superblock_private(%struct.super_block* %0, %struct.ecryptfs_sb_info* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ecryptfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ecryptfs_sb_info* %1, %struct.ecryptfs_sb_info** %4, align 8
  %5 = load %struct.ecryptfs_sb_info*, %struct.ecryptfs_sb_info** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  store %struct.ecryptfs_sb_info* %5, %struct.ecryptfs_sb_info** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
