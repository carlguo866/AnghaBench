; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_get_data_pos_rows.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdashboard.c_get_data_pos_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DASH_DATA_POS = common dso_local global i32 0, align 4
@DASH_COL_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_data_pos_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data_pos_rows() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @DASH_DATA_POS, align 4
  %5 = load i32, i32* @DASH_COL_ROWS, align 4
  %6 = sub nsw i32 %4, %5
  br label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @DASH_DATA_POS, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %6, %3 ], [ %8, %7 ]
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
