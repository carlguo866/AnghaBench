; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_ppd_bar4_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_ppd_bar4_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@XEON_PPD_SPLIT_BAR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PPD %d split bar\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*, i32)* @xeon_ppd_bar4_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xeon_ppd_bar4_split(%struct.intel_ntb_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_ntb_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XEON_PPD_SPLIT_BAR_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %4, align 8
  %12 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
