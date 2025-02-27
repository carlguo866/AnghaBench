; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_order.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_order(%struct.xfs_buf* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %6 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %8, i32 0, i32 1
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %7, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @xfs_attr3_leaf_hdr_from_disk(i32 %13, %struct.xfs_attr3_icleaf_hdr* %5, i32 %16)
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @xfs_attr3_leaf_hdr_from_disk(i32 %20, %struct.xfs_attr3_icleaf_hdr* %6, i32 %23)
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %26 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %27 = call i32 @xfs_attr3_leaf_order(%struct.xfs_buf* %25, %struct.xfs_attr3_icleaf_hdr* %5, %struct.xfs_buf* %26, %struct.xfs_attr3_icleaf_hdr* %6)
  ret i32 %27
}

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(i32, %struct.xfs_attr3_icleaf_hdr*, i32) #1

declare dso_local i32 @xfs_attr3_leaf_order(%struct.xfs_buf*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_buf*, %struct.xfs_attr3_icleaf_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
