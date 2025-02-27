; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_ll.c_st_ll_sleep_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_ll.c_st_ll_sleep_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"sleep indication recvd\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sleep ack rcvd: host shouldn't\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"wake indication recvd\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"wake ack rcvd\00", align 1
@ST_LL_AWAKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c" unknown input/state \00", align 1
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @st_ll_sleep_state(%struct.st_data_s* %0, i8 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.st_data_s*, align 8
  %5 = alloca i8, align 1
  store %struct.st_data_s* %0, %struct.st_data_s** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %23 [
    i32 130, label %8
    i32 131, label %12
    i32 128, label %14
    i32 129, label %18
  ]

8:                                                ; preds = %2
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %11 = call i32 @ll_device_want_to_sleep(%struct.st_data_s* %10)
  br label %27

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %27

14:                                               ; preds = %2
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %17 = call i32 @ll_device_want_to_wakeup(%struct.st_data_s* %16)
  br label %27

18:                                               ; preds = %2
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @ST_LL_AWAKE, align 4
  %21 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %22 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %2
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %3, align 8
  br label %28

27:                                               ; preds = %18, %14, %12, %8
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @ll_device_want_to_sleep(%struct.st_data_s*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ll_device_want_to_wakeup(%struct.st_data_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
