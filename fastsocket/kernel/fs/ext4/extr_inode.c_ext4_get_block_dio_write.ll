; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_block_dio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_block_dio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"ext4_get_block_dio_write: inode %lu, create flag %d\0A\00", align 1
@EXT4_GET_BLOCKS_DIO_CREATE_EXT = common dso_local global i32 0, align 4
@DIO_MAX_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext4_get_block_dio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_get_block_dio_write(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = lshr i32 %15, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ext4_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @EXT4_GET_BLOCKS_DIO_CREATE_EXT, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %29, %4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ext4_chunk_trans_blocks(%struct.inode* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32* @ext4_journal_start(%struct.inode* %35, i32 %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @PTR_ERR(i32* %42)
  store i32 %43, i32* %10, align 4
  br label %65

44:                                               ; preds = %31
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ext4_get_blocks(i32* %45, %struct.inode* %46, i32 %47, i32 %48, %struct.buffer_head* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %55, %58
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %54, %44
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @ext4_journal_stop(i32* %63)
  br label %65

65:                                               ; preds = %62, %41
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i32 @ext4_debug(i8*, i32, i32) #1

declare dso_local i32 @ext4_chunk_trans_blocks(%struct.inode*, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_get_blocks(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
