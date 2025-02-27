; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_trans_res = type { i64 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, %struct.xfs_mount*, i32 }

@xfs_trans_zone = common dso_local global i32 0, align 4
@XFS_TRANS_NO_WRITECOUNT = common dso_local global i32 0, align 4
@SB_FREEZE_COMPLETE = common dso_local global i64 0, align 8
@XFS_TRANS_HEADER_MAGIC = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_trans_alloc(%struct.xfs_mount* %0, %struct.xfs_trans_res* %1, i32 %2, i32 %3, i32 %4, %struct.xfs_trans** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca %struct.xfs_trans_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_trans**, align 8
  %14 = alloca %struct.xfs_trans*, align 8
  %15 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %8, align 8
  store %struct.xfs_trans_res* %1, %struct.xfs_trans_res** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.xfs_trans** %5, %struct.xfs_trans*** %13, align 8
  %16 = load i32, i32* @xfs_trans_zone, align 4
  %17 = call %struct.xfs_trans* @kmem_zone_zalloc(i32 %16, i32 0)
  store %struct.xfs_trans* %17, %struct.xfs_trans** %14, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @XFS_TRANS_NO_WRITECOUNT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %24 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @sb_start_intwrite(%struct.TYPE_4__* %25)
  br label %27

27:                                               ; preds = %22, %6
  %28 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %9, align 8
  %29 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SB_FREEZE_COMPLETE, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %32, %27
  %42 = phi i1 [ false, %27 ], [ %40, %32 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %46 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load i32, i32* @XFS_TRANS_HEADER_MAGIC, align 4
  %49 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %50 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %53 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %55 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %56 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %55, i32 0, i32 5
  store %struct.xfs_mount* %54, %struct.xfs_mount** %56, align 8
  %57 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %58 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %57, i32 0, i32 4
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %61 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %60, i32 0, i32 3
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %64 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %63, i32 0, i32 2
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load i32, i32* @NULLFSBLOCK, align 4
  %67 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %68 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %70 = load %struct.xfs_trans_res*, %struct.xfs_trans_res** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @xfs_trans_reserve(%struct.xfs_trans* %69, %struct.xfs_trans_res* %70, i32 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %41
  %77 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %78 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %86

80:                                               ; preds = %41
  %81 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %82 = load i32, i32* @_RET_IP_, align 4
  %83 = call i32 @trace_xfs_trans_alloc(%struct.xfs_trans* %81, i32 %82)
  %84 = load %struct.xfs_trans*, %struct.xfs_trans** %14, align 8
  %85 = load %struct.xfs_trans**, %struct.xfs_trans*** %13, align 8
  store %struct.xfs_trans* %84, %struct.xfs_trans** %85, align 8
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.xfs_trans* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @sb_start_intwrite(%struct.TYPE_4__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @xfs_trans_reserve(%struct.xfs_trans*, %struct.xfs_trans_res*, i32, i32) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

declare dso_local i32 @trace_xfs_trans_alloc(%struct.xfs_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
