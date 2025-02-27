; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_get_desc_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_get_desc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_palloc_cache = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.nilfs_palloc_cache* }

@nilfs_palloc_desc_block_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, %struct.buffer_head**)* @nilfs_palloc_get_desc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_palloc_get_desc_block(%struct.inode* %0, i64 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.nilfs_palloc_cache*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %12, align 8
  store %struct.nilfs_palloc_cache* %13, %struct.nilfs_palloc_cache** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @nilfs_palloc_desc_blkoff(%struct.inode* %15, i64 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @nilfs_palloc_desc_block_init, align 4
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %21 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %9, align 8
  %22 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %21, i32 0, i32 1
  %23 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %9, align 8
  %24 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %23, i32 0, i32 0
  %25 = call i32 @nilfs_palloc_get_block(%struct.inode* %14, i32 %17, i32 %18, i32 %19, %struct.buffer_head** %20, i32* %22, i32* %24)
  ret i32 %25
}

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_get_block(%struct.inode*, i32, i32, i32, %struct.buffer_head**, i32*, i32*) #1

declare dso_local i32 @nilfs_palloc_desc_blkoff(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
