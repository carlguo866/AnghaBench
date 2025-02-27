; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_trans_inode.c_xfs_trans_roll_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_trans_inode.c_xfs_trans_roll_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }

@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_trans_roll_inode(%struct.xfs_trans** %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca %struct.xfs_trans**, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_trans** %0, %struct.xfs_trans*** %3, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %4, align 8
  %6 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %7 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %9 = load i32, i32* @XFS_ILOG_CORE, align 4
  %10 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %7, %struct.xfs_inode* %8, i32 %9)
  %11 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %12 = call i32 @xfs_trans_roll(%struct.xfs_trans** %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.xfs_trans**, %struct.xfs_trans*** %3, align 8
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %16, align 8
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %19 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %17, %struct.xfs_inode* %18, i32 0)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_roll(%struct.xfs_trans**) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
