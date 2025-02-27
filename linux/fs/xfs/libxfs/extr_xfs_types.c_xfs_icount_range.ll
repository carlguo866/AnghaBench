; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_types.c_xfs_icount_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_types.c_xfs_icount_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@XFS_INODES_PER_CHUNK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_icount_range(%struct.xfs_mount* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* @XFS_INODES_PER_CHUNK, align 8
  %12 = load i64*, i64** %5, align 8
  store i64 %11, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %30, %3
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @xfs_agino_range(%struct.xfs_mount* %21, i64 %22, i64* %9, i64* %10)
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub nsw i64 %24, %25
  %27 = add nsw i64 %26, 1
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i64, i64* %7, align 8
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  ret void
}

declare dso_local i32 @xfs_agino_range(%struct.xfs_mount*, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
