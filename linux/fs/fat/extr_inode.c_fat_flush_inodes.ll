; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_flush_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_flush_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_flush_inodes(%struct.super_block* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.TYPE_8__* @MSDOS_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i32 @writeback_inode(%struct.inode* %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @writeback_inode(%struct.inode* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.address_space*, %struct.address_space** %41, align 8
  store %struct.address_space* %42, %struct.address_space** %9, align 8
  %43 = load %struct.address_space*, %struct.address_space** %9, align 8
  %44 = call i32 @filemap_flush(%struct.address_space* %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %35, %32
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_8__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @writeback_inode(%struct.inode*) #1

declare dso_local i32 @filemap_flush(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
