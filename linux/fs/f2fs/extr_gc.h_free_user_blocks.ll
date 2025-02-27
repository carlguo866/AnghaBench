; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.h_free_user_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.h_free_user_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.f2fs_sb_info*)* @free_user_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @free_user_blocks(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %5 = call i64 @free_segments(%struct.f2fs_sb_info* %4)
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %7 = call i64 @overprovision_segments(%struct.f2fs_sb_info* %6)
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = call i64 @free_segments(%struct.f2fs_sb_info* %11)
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = call i64 @overprovision_segments(%struct.f2fs_sb_info* %13)
  %15 = sub nsw i64 %12, %14
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %17 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = shl i64 %15, %18
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local i64 @free_segments(%struct.f2fs_sb_info*) #1

declare dso_local i64 @overprovision_segments(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
