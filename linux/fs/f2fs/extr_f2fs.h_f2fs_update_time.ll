; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_update_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64* }

@jiffies = common dso_local global i64 0, align 8
@REQ_TIME = common dso_local global i32 0, align 4
@DISCARD_TIME = common dso_local global i64 0, align 8
@GC_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @f2fs_update_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_update_time(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  store i64 %7, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @REQ_TIME, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @DISCARD_TIME, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %18, i64* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @GC_TIME, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 %24, i64* %29, align 8
  br label %30

30:                                               ; preds = %17, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
