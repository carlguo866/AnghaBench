; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @f2fs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %5, align 8
  %8 = call %struct.inode* @d_inode(%struct.dentry* %7)
  store %struct.inode* %8, %struct.inode** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = call i64 @f2fs_empty_dir(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 @f2fs_unlink(%struct.inode* %13, %struct.dentry* %14)
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOTEMPTY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @f2fs_empty_dir(%struct.inode*) #1

declare dso_local i32 @f2fs_unlink(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
