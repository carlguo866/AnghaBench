; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_setup_trap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_setup_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@ELOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"overlayfs: conflicting %s path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry*, %struct.inode**, i8*)* @ovl_setup_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_setup_trap(%struct.super_block* %0, %struct.dentry* %1, %struct.inode** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode** %2, %struct.inode*** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = call %struct.inode* @ovl_get_trap_inode(%struct.super_block* %12, %struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %10, align 8
  %16 = call i32 @PTR_ERR_OR_ZERO(%struct.inode* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @ELOOP, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* %30, %struct.inode** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.inode* @ovl_get_trap_inode(%struct.super_block*, %struct.dentry*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
