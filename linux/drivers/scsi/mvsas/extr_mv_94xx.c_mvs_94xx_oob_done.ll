; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_oob_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_oob_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@PHY_READY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, i32)* @mvs_94xx_oob_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_94xx_oob_done(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @mvs_read_phy_ctl(%struct.mvs_info* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PHY_READY_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @mvs_read_phy_ctl(%struct.mvs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
