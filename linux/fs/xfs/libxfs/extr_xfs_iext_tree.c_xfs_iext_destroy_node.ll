; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_destroy_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_destroy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_iext_node = type { i64*, %struct.xfs_iext_node** }

@KEYS_PER_NODE = common dso_local global i32 0, align 4
@XFS_IEXT_KEY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_iext_node*, i32)* @xfs_iext_destroy_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iext_destroy_node(%struct.xfs_iext_node* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_iext_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xfs_iext_node* %0, %struct.xfs_iext_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @KEYS_PER_NODE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XFS_IEXT_KEY_INVALID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %37

24:                                               ; preds = %13
  %25 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %26 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %25, i32 0, i32 1
  %27 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %27, i64 %29
  %31 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 1
  call void @xfs_iext_destroy_node(%struct.xfs_iext_node* %31, i32 %33)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %23, %9
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %40 = call i32 @kmem_free(%struct.xfs_iext_node* %39)
  ret void
}

declare dso_local i32 @kmem_free(%struct.xfs_iext_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
