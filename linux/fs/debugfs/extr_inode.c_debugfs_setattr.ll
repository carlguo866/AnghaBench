; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }

@LOCKDOWN_DEBUGFS = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @debugfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %7 = load i32, i32* @LOCKDOWN_DEBUGFS, align 4
  %8 = call i32 @security_locked_down(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.iattr*, %struct.iattr** %5, align 8
  %13 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATTR_MODE, align 4
  %16 = load i32, i32* @ATTR_UID, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ATTR_GID, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %11, %2
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.iattr*, %struct.iattr** %5, align 8
  %27 = call i32 @simple_setattr(%struct.dentry* %25, %struct.iattr* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @security_locked_down(i32) #1

declare dso_local i32 @simple_setattr(%struct.dentry*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
