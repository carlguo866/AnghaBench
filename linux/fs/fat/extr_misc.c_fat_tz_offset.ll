; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_tz_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_tz_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@sys_tz = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SECS_PER_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdos_sb_info*)* @fat_tz_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_tz_offset(%struct.msdos_sb_info* %0) #0 {
  %2 = alloca %struct.msdos_sb_info*, align 8
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %2, align 8
  %3 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %2, align 8
  %4 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %2, align 8
  %10 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 0, %12
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys_tz, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %13, %8 ], [ %15, %14 ]
  %18 = load i32, i32* @SECS_PER_MIN, align 4
  %19 = mul nsw i32 %17, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
