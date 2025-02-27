; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_lookup_le.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_lookup_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@XFS_LOOKUP_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_refcount_lookup_le(%struct.xfs_btree_cur* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.xfs_btree_cur*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @XFS_LOOKUP_LE, align 4
  %17 = call i32 @trace_xfs_refcount_lookup(i32 %9, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 8
  %23 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %28 = load i32, i32* @XFS_LOOKUP_LE, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @xfs_btree_lookup(%struct.xfs_btree_cur* %27, i32 %28, i32* %29)
  ret i32 %30
}

declare dso_local i32 @trace_xfs_refcount_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @xfs_btree_lookup(%struct.xfs_btree_cur*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
