; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_dentry.c_v9fs_cached_dentry_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_dentry.c_v9fs_cached_dentry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c" dentry: %s (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @v9fs_cached_dentry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_cached_dentry_delete(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 1
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %7, %struct.inode** %4, align 8
  %8 = load i32, i32* @P9_DEBUG_VFS, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call i32 @P9_DPRINTK(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.dentry* %13)
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
