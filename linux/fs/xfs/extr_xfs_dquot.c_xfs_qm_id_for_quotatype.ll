; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_id_for_quotatype.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_id_for_quotatype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_id_for_quotatype(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 128, label %7
    i32 130, label %12
    i32 129, label %17
  ]

7:                                                ; preds = %2
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %19 = call i32 @xfs_get_projid(%struct.xfs_inode* %18)
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2
  %21 = call i32 @ASSERT(i32 0)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %17, %12, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @xfs_get_projid(%struct.xfs_inode*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
