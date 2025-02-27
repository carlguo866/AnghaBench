; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_paths_from_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_paths_from_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_fs_paths = type { i32, i32 }

@inode_to_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @paths_from_inode(i32 %0, %struct.inode_fs_paths* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode_fs_paths*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.inode_fs_paths* %1, %struct.inode_fs_paths** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.inode_fs_paths*, %struct.inode_fs_paths** %4, align 8
  %7 = getelementptr inbounds %struct.inode_fs_paths, %struct.inode_fs_paths* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.inode_fs_paths*, %struct.inode_fs_paths** %4, align 8
  %10 = getelementptr inbounds %struct.inode_fs_paths, %struct.inode_fs_paths* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @inode_to_path, align 4
  %13 = load %struct.inode_fs_paths*, %struct.inode_fs_paths** %4, align 8
  %14 = call i32 @iterate_irefs(i32 %5, i32 %8, i32 %11, i32 %12, %struct.inode_fs_paths* %13)
  ret i32 %14
}

declare dso_local i32 @iterate_irefs(i32, i32, i32, i32, %struct.inode_fs_paths*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
