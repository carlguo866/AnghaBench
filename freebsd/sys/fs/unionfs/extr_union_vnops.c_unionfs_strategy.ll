; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_strategy_args = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @unionfs_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_strategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca %struct.vop_strategy_args*, align 8
  %3 = alloca %struct.unionfs_node*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %2, align 8
  %5 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @KASSERT_UNIONFS_VNODE(i32 %7)
  %9 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.unionfs_node* @VTOUNIONFS(i32 %11)
  store %struct.unionfs_node* %12, %struct.unionfs_node** %3, align 8
  %13 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %14 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  %16 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %17 = icmp ne %struct.vnode* %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %20 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %19, i32 0, i32 1
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %24 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %23, i32 0, i32 0
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi %struct.vnode* [ %21, %18 ], [ %25, %22 ]
  store %struct.vnode* %27, %struct.vnode** %4, align 8
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %2, align 8
  %30 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @VOP_STRATEGY(%struct.vnode* %28, %struct.TYPE_2__* %31)
  ret i32 %32
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @VOP_STRATEGY(%struct.vnode*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
