; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_fsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.writeback_control = type { i32, i32 }

@WB_SYNC_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dentry*, i32)* @pohmelfs_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_fsync(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.writeback_control, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %8, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %8, i32 0, i32 1
  %16 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call i32 @sync_inode(%struct.inode* %17, %struct.writeback_control* %8)
  ret i32 %18
}

declare dso_local i32 @sync_inode(%struct.inode*, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
