; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_getfrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_getfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i64 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i32, i32, i32*)* @ufs_getfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ufs_getfrag(%struct.inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  store i32 -1000, i32* %14, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ufs_getfrag_block(%struct.inode* %15, i32 %16, %struct.buffer_head* %10, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %4
  %24 = call i64 @buffer_mapped(%struct.buffer_head* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_2__* %29, i32 %31)
  store %struct.buffer_head* %32, %struct.buffer_head** %12, align 8
  %33 = call i64 @buffer_new(%struct.buffer_head* %10)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memset(i32 %38, i32 0, i32 %43)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %46 = call i32 @set_buffer_uptodate(%struct.buffer_head* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %48 = call i32 @mark_buffer_dirty(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %35, %26
  %50 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %50, %struct.buffer_head** %5, align 8
  br label %52

51:                                               ; preds = %23, %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %52

52:                                               ; preds = %51, %49
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %53
}

declare dso_local i32 @ufs_getfrag_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
