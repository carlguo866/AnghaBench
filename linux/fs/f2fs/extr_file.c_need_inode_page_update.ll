; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_need_inode_page_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_need_inode_page_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @need_inode_page_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_inode_page_update(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = call i32 @NODE_MAPPING(%struct.f2fs_sb_info* %7)
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.page* @find_get_page(i32 %8, i32 %9)
  store %struct.page* %10, %struct.page** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i64 @PageDirty(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @f2fs_need_inode_block_update(%struct.f2fs_sb_info* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %13
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @f2fs_put_page(%struct.page* %24, i32 0)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.page* @find_get_page(i32, i32) #1

declare dso_local i32 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @f2fs_need_inode_block_update(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
