; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_select_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_select_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i64 }

@SELECT_CARD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@DESELECT_CARD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R0 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_select_card(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %12 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %11, i32 0, i32 0
  store %struct.sd_info* %12, %struct.sd_info** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @SELECT_CARD, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %19 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @DESELECT_CARD, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @SD_RSP_TYPE_R0, align 4
  store i32 %23, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %25, i32 %26, i64 %27, i32 %28, i32* null, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @STATUS_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
