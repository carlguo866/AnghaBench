; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_sleep_on_loop_condition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_sleep_on_loop_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i64, i32 }

@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@DASD_CQR_DONE = common dso_local global i64 0, align 8
@DASD_CQR_FAILED = common dso_local global i64 0, align 8
@DASD_CQR_FILLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @__dasd_sleep_on_loop_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dasd_sleep_on_loop_condition(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %4 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 2
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %37

15:                                               ; preds = %9
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DASD_CQR_DONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DASD_CQR_FAILED, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ false, %15 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %1
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %32 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DASD_CQR_FILLED, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %27, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
