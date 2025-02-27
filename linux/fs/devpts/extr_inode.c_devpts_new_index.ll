; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_new_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_new_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pts_fs_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@pty_count = common dso_local global i32 0, align 4
@pty_limit = common dso_local global i64 0, align 8
@pty_reserve = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devpts_new_index(%struct.pts_fs_info* %0) #0 {
  %2 = alloca %struct.pts_fs_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pts_fs_info* %0, %struct.pts_fs_info** %2, align 8
  %4 = load i32, i32* @ENOSPC, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call i64 @atomic_inc_return(i32* @pty_count)
  %7 = load i64, i64* @pty_limit, align 8
  %8 = load %struct.pts_fs_info*, %struct.pts_fs_info** %2, align 8
  %9 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @pty_reserve, align 8
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i64 [ 0, %13 ], [ %15, %14 ]
  %18 = sub nsw i64 %7, %17
  %19 = icmp sge i64 %6, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %31

21:                                               ; preds = %16
  %22 = load %struct.pts_fs_info*, %struct.pts_fs_info** %2, align 8
  %23 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %22, i32 0, i32 1
  %24 = load %struct.pts_fs_info*, %struct.pts_fs_info** %2, align 8
  %25 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @ida_alloc_max(i32* %23, i64 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %20
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @atomic_dec(i32* @pty_count)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @ida_alloc_max(i32*, i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
