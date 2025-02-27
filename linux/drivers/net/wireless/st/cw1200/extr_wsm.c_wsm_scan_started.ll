; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_scan_started.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_scan_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_buf = type { i32 }

@WSM_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i8*, %struct.wsm_buf*)* @wsm_scan_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_scan_started(%struct.cw1200_common* %0, i8* %1, %struct.wsm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wsm_buf*, align 8
  %8 = alloca i64, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wsm_buf* %2, %struct.wsm_buf** %7, align 8
  %9 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %10 = call i64 @WSM_GET32(%struct.wsm_buf* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @WSM_STATUS_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %16 = call i32 @cw1200_scan_failed_cb(%struct.cw1200_common* %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

20:                                               ; No predecessors!
  %21 = call i32 @WARN_ON(i32 1)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %19, %14
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i32 @cw1200_scan_failed_cb(%struct.cw1200_common*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
