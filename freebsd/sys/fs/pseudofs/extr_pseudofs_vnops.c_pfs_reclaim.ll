; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { %struct.pfs_vdata* }
%struct.pfs_vdata = type { %struct.pfs_node* }
%struct.pfs_node = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_reclaim_args*)* @pfs_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_reclaim(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.pfs_vdata*, align 8
  %5 = alloca %struct.pfs_node*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %6 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %6, i32 0, i32 0
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 0
  %11 = load %struct.pfs_vdata*, %struct.pfs_vdata** %10, align 8
  store %struct.pfs_vdata* %11, %struct.pfs_vdata** %4, align 8
  %12 = load %struct.pfs_vdata*, %struct.pfs_vdata** %4, align 8
  %13 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %12, i32 0, i32 0
  %14 = load %struct.pfs_node*, %struct.pfs_node** %13, align 8
  store %struct.pfs_node* %14, %struct.pfs_node** %5, align 8
  %15 = load %struct.pfs_node*, %struct.pfs_node** %5, align 8
  %16 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @PFS_TRACE(i8* %19)
  %21 = load %struct.pfs_node*, %struct.pfs_node** %5, align 8
  %22 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %21)
  %23 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %24 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %23, i32 0, i32 0
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  %26 = call i32 @pfs_vncache_free(%struct.vnode* %25)
  ret i32 %26
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @pfs_vncache_free(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
