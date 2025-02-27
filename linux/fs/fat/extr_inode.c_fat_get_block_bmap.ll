; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_get_block_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_get_block_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i64 }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @fat_get_block_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_get_block_bmap(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %10, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = lshr i64 %20, %23
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @fat_bmap(%struct.inode* %29, i64 %30, i64* %13, i64* %14, i32 %31, i32 1)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %56

37:                                               ; preds = %4
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = load %struct.super_block*, %struct.super_block** %10, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @map_bh(%struct.buffer_head* %41, %struct.super_block* %42, i64 %43)
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @min(i64 %45, i64 %46)
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.super_block*, %struct.super_block** %10, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 %49, %52
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %48, %35
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fat_bmap(%struct.inode*, i64, i64*, i64*, i32, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
