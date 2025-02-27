; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.writeback_control = type { i64 }
%struct.f2fs_sb_info = type { i32 }

@FI_DIRTY_INODE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %13 = call i64 @F2FS_NODE_INO(%struct.f2fs_sb_info* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %20 = call i64 @F2FS_META_INO(%struct.f2fs_sb_info* %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load i32, i32* @FI_DIRTY_INODE, align 4
  %26 = call i32 @is_inode_flag_set(%struct.inode* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %50

29:                                               ; preds = %23
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %31 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @f2fs_update_inode_page(%struct.inode* %37)
  %39 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %40 = icmp ne %struct.writeback_control* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %43 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %48 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %47, i32 1)
  br label %49

49:                                               ; preds = %46, %41, %36
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %33, %28, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @F2FS_NODE_INO(%struct.f2fs_sb_info*) #1

declare dso_local i64 @F2FS_META_INO(%struct.f2fs_sb_info*) #1

declare dso_local i32 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_update_inode_page(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
