; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @sysv_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.sysv_dir_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry* %14, %struct.page** %6)
  store %struct.sysv_dir_entry* %15, %struct.sysv_dir_entry** %7, align 8
  %16 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %17 = icmp ne %struct.sysv_dir_entry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i32 @sysv_delete_entry(%struct.sysv_dir_entry* %20, %struct.page* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %34

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @inode_dec_link_count(%struct.inode* %32)
  br label %34

34:                                               ; preds = %26, %25, %18
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local %struct.sysv_dir_entry* @sysv_find_entry(%struct.dentry*, %struct.page**) #1

declare dso_local i32 @sysv_delete_entry(%struct.sysv_dir_entry*, %struct.page*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
