; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_direction_to_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_direction_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS_DIR_IDX_UPLINK = common dso_local global i32 0, align 4
@TS_DIR_IDX_DOWNLINK = common dso_local global i32 0, align 4
@TS_DIR_IDX_BIDI = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid direction: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wmm_ac_direction_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmm_ac_direction_to_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 128, label %5
    i32 129, label %7
    i32 130, label %9
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TS_DIR_IDX_UPLINK, align 4
  store i32 %6, i32* %2, align 4
  br label %15

7:                                                ; preds = %1
  %8 = load i32, i32* @TS_DIR_IDX_DOWNLINK, align 4
  store i32 %8, i32* %2, align 4
  br label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @TS_DIR_IDX_BIDI, align 4
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_ERROR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 128, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %9, %7, %5
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
