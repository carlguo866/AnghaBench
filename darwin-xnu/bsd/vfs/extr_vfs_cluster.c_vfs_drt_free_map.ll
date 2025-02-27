; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_free_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_free_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_drt_clustermap = type { i64 }

@kernel_map = common dso_local global i32 0, align 4
@DRT_HASH_SMALL_MODULUS = common dso_local global i64 0, align 8
@DRT_SMALL_ALLOCATION = common dso_local global i32 0, align 4
@DRT_LARGE_ALLOCATION = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfs_drt_clustermap*)* @vfs_drt_free_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_drt_free_map(%struct.vfs_drt_clustermap* %0) #0 {
  %2 = alloca %struct.vfs_drt_clustermap*, align 8
  store %struct.vfs_drt_clustermap* %0, %struct.vfs_drt_clustermap** %2, align 8
  %3 = load i32, i32* @kernel_map, align 4
  %4 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %2, align 8
  %5 = ptrtoint %struct.vfs_drt_clustermap* %4 to i32
  %6 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %2, align 8
  %7 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DRT_HASH_SMALL_MODULUS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @DRT_SMALL_ALLOCATION, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @DRT_LARGE_ALLOCATION, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call i32 @kmem_free(i32 %3, i32 %5, i32 %16)
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %18
}

declare dso_local i32 @kmem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
