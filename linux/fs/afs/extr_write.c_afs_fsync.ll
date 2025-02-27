; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"{%llx:%llu},{n=%pD},%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %9, align 8
  %14 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %13)
  store %struct.afs_vnode* %14, %struct.afs_vnode** %10, align 8
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %16 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @_enter(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, %struct.file* %23, i32 %24)
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @file_write_and_wait_range(%struct.file* %26, i32 %27, i32 %28)
  ret i32 %29
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, %struct.file*, i32) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
