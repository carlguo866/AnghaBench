; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_write_normal_summaries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_write_normal_summaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@NR_CURSEG_DATA_TYPE = common dso_local global i32 0, align 4
@NR_CURSEG_NODE_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i64, i32)* @write_normal_summaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_normal_summaries(%struct.f2fs_sb_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @IS_DATASEG(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NR_CURSEG_DATA_TYPE, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NR_CURSEG_NODE_TYPE, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %36, %20
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = call i32 @write_current_sum_page(%struct.f2fs_sb_info* %27, i32 %28, i64 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %22

39:                                               ; preds = %22
  ret void
}

declare dso_local i64 @IS_DATASEG(i32) #1

declare dso_local i32 @write_current_sum_page(%struct.f2fs_sb_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
