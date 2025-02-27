; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_mark_inode_dirty_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_mark_inode_dirty_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@FI_NEW_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_mark_inode_dirty_sync(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = load i32, i32* @FI_NEW_INODE, align 4
  %7 = call i64 @is_inode_flag_set(%struct.inode* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @f2fs_inode_dirtied(%struct.inode* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @mark_inode_dirty_sync(%struct.inode* %17)
  br label %19

19:                                               ; preds = %16, %15, %9
  ret void
}

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i64 @f2fs_inode_dirtied(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
