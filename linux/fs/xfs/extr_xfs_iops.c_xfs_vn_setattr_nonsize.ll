; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_vn_setattr_nonsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_vn_setattr_nonsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.xfs_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_vn_setattr_nonsize(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call i32 @d_inode(%struct.dentry* %8)
  %10 = call %struct.xfs_inode* @XFS_I(i32 %9)
  store %struct.xfs_inode* %10, %struct.xfs_inode** %6, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %12 = call i32 @trace_xfs_setattr(%struct.xfs_inode* %11)
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = load %struct.iattr*, %struct.iattr** %5, align 8
  %15 = call i32 @xfs_vn_change_ok(%struct.dentry* %13, %struct.iattr* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %22 = load %struct.iattr*, %struct.iattr** %5, align 8
  %23 = call i32 @xfs_setattr_nonsize(%struct.xfs_inode* %21, %struct.iattr* %22, i32 0)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.xfs_inode* @XFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @trace_xfs_setattr(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_vn_change_ok(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @xfs_setattr_nonsize(%struct.xfs_inode*, %struct.iattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
