; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }

@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @minix_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load i32, i32* @ENOTEMPTY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i64 @minix_empty_dir(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i32 @minix_unlink(%struct.inode* %16, %struct.dentry* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @inode_dec_link_count(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call i32 @inode_dec_link_count(%struct.inode* %24)
  br label %26

26:                                               ; preds = %21, %15
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i64 @minix_empty_dir(%struct.inode*) #1

declare dso_local i32 @minix_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
