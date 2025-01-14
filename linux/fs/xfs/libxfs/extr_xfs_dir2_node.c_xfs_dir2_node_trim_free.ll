; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_trim_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_trim_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.xfs_dir3_icfree_hdr*, i32*)* }
%struct.xfs_dir3_icfree_hdr = type { i64 }
%struct.xfs_buf = type { i32* }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_trim_free(%struct.TYPE_9__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xfs_dir3_icfree_hdr, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %9, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @xfs_dir2_free_try_read(i32* %21, %struct.TYPE_8__* %22, i64 %23, %struct.xfs_buf** %8)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %3
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %31 = icmp ne %struct.xfs_buf* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %76

33:                                               ; preds = %29
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %11, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32 (%struct.xfs_dir3_icfree_hdr*, i32*)*, i32 (%struct.xfs_dir3_icfree_hdr*, i32*)** %40, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 %41(%struct.xfs_dir3_icfree_hdr* %13, i32* %42)
  %44 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32*, i32** %12, align 8
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %50 = call i32 @xfs_trans_brelse(i32* %48, %struct.xfs_buf* %49)
  store i32 0, i32* %4, align 4
  br label %76

51:                                               ; preds = %33
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @xfs_dir2_da_to_db(i32 %55, i32 %57)
  %59 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %60 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_9__* %52, i32 %58, %struct.xfs_buf* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %51
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @ENOSPC, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %72 = call i32 @xfs_trans_brelse(i32* %70, %struct.xfs_buf* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %51
  %75 = load i32*, i32** %7, align 8
  store i32 1, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %63, %47, %32, %27
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @xfs_dir2_free_try_read(i32*, %struct.TYPE_8__*, i64, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_9__*, i32, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_da_to_db(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
