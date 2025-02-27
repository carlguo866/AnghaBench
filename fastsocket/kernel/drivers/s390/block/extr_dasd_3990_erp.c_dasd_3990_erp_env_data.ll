; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_env_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_env_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, {}*, %struct.dasd_device* }
%struct.dasd_device = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Environmental data present\00", align 1
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_env_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_env_data(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 2
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %5, align 8
  %9 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %9, i32 0, i32 1
  %11 = bitcast {}** %10 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)**
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_env_data, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %11, align 8
  %12 = load i32, i32* @DBF_WARNING, align 4
  %13 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %14 = call i32 @DBF_DEV_EVENT(i32 %12, %struct.dasd_device* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @dasd_3990_handle_env_data(%struct.dasd_ccw_req* %15, i8* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 7
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 15
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req* %24, i8* %25)
  store %struct.dasd_ccw_req* %26, %struct.dasd_ccw_req** %3, align 8
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @DASD_CQR_FILLED, align 4
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %32
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_3990_handle_env_data(%struct.dasd_ccw_req*, i8*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_4(%struct.dasd_ccw_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
