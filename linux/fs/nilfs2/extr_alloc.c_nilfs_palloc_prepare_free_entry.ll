; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_prepare_free_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_prepare_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.buffer_head*, %struct.buffer_head*, i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_palloc_prepare_free_entry(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_palloc_req*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %13 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @nilfs_palloc_group(%struct.inode* %11, i32 %14, i64* %9)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @nilfs_palloc_get_desc_block(%struct.inode* %16, i64 %17, i32 1, %struct.buffer_head** %6)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @nilfs_palloc_get_bitmap_block(%struct.inode* %24, i64 %25, i32 1, %struct.buffer_head** %7)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %31 = call i32 @brelse(%struct.buffer_head* %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %23
  %34 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %35 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %36 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %35, i32 0, i32 1
  store %struct.buffer_head* %34, %struct.buffer_head** %36, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %39 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %38, i32 0, i32 0
  store %struct.buffer_head* %37, %struct.buffer_head** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %29, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @nilfs_palloc_group(%struct.inode*, i32, i64*) #1

declare dso_local i32 @nilfs_palloc_get_desc_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_palloc_get_bitmap_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
