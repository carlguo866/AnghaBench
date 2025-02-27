; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"overlayfs: cleanup of '%pd2' failed (%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_cleanup(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = call i32 @dget(%struct.dentry* %6)
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call i64 @d_is_dir(%struct.dentry* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call i32 @ovl_do_rmdir(%struct.inode* %12, %struct.dentry* %13)
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i32 @ovl_do_unlink(%struct.inode* %16, %struct.dentry* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i32 @dput(%struct.dentry* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.dentry* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @ovl_do_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ovl_do_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @pr_err(i8*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
