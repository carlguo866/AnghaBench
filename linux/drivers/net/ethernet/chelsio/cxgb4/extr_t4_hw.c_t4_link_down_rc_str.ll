; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_link_down_rc_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_link_down_rc_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t4_link_down_rc_str.reason = internal constant [8 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"Link Down\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Remote Fault\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Auto-negotiation Failure\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Insufficient Airflow\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unable To Determine Reason\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"No RX Signal Detected\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Bad Reason Code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @t4_link_down_rc_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @t4_link_down_rc_str(i8 zeroext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = call zeroext i8 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @t4_link_down_rc_str.reason, i64 0, i64 0))
  %7 = zext i8 %6 to i32
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [8 x i8*], [8 x i8*]* @t4_link_down_rc_str.reason, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %10, %9
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local zeroext i8 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
