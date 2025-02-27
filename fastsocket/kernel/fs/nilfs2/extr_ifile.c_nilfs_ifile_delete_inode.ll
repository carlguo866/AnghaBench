; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ifile.c_nilfs_ifile_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ifile.c_nilfs_ifile_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nilfs_inode = type { i64 }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_ifile_delete_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_palloc_req, align 8
  %7 = alloca %struct.nilfs_inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %11 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32 @nilfs_palloc_prepare_free_entry(%struct.inode* %13, %struct.nilfs_palloc_req* %6)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 0
  %22 = call i32 @nilfs_palloc_get_entry_block(%struct.inode* %18, i32 %20, i32 0, %struct.TYPE_5__** %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @nilfs_palloc_abort_free_entry(%struct.inode* %26, %struct.nilfs_palloc_req* %6)
  br label %28

28:                                               ; preds = %25, %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @brelse(%struct.TYPE_5__* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KM_USER0, align 4
  %43 = call i8* @kmap_atomic(i32 %41, i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call %struct.nilfs_inode* @nilfs_palloc_block_get_entry(%struct.inode* %44, i32 %46, %struct.TYPE_5__* %48, i8* %49)
  store %struct.nilfs_inode* %50, %struct.nilfs_inode** %7, align 8
  %51 = load %struct.nilfs_inode*, %struct.nilfs_inode** %7, align 8
  %52 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @KM_USER0, align 4
  %55 = call i32 @kunmap_atomic(i8* %53, i32 %54)
  %56 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.TYPE_5__* %57)
  %59 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %6, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @brelse(%struct.TYPE_5__* %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call i32 @nilfs_palloc_commit_free_entry(%struct.inode* %62, %struct.nilfs_palloc_req* %6)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %37, %32
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @nilfs_palloc_prepare_free_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @nilfs_palloc_get_entry_block(%struct.inode*, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @nilfs_palloc_abort_free_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

declare dso_local i32 @brelse(%struct.TYPE_5__*) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_inode* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.TYPE_5__*) #1

declare dso_local i32 @nilfs_palloc_commit_free_entry(%struct.inode*, %struct.nilfs_palloc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
