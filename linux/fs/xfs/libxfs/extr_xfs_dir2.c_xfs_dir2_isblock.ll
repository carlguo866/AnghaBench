; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir2_isblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir2_isblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_isblock(%struct.xfs_da_args* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_da_args*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* @XFS_DATA_FORK, align 4
  %12 = call i32 @xfs_bmap_last_offset(%struct.TYPE_6__* %10, i32* %6, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @XFS_FSB_TO_B(i32 %21, i32 %22)
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %23, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %16
  %34 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %39, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EFSCORRUPTED, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %33, %16
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %46, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @xfs_bmap_last_offset(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @XFS_FSB_TO_B(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
