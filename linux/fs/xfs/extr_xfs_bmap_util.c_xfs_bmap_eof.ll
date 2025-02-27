; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_bmap_eof.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_bmap_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmap_eof(%struct.xfs_inode* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_bmbt_irec, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @xfs_bmap_last_extent(i32* null, %struct.xfs_inode* %12, i32 %13, %struct.xfs_bmbt_irec* %10, i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %27, %29
  %31 = icmp sge i64 %25, %30
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %22
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @xfs_bmap_last_extent(i32*, %struct.xfs_inode*, i32, %struct.xfs_bmbt_irec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
