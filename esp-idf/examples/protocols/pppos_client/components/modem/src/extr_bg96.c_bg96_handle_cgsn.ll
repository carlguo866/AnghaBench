; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_bg96.c_bg96_handle_cgsn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/pppos_client/components/modem/src/extr_bg96.c_bg96_handle_cgsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ESP_FAIL = common dso_local global i32 0, align 4
@MODEM_RESULT_CODE_SUCCESS = common dso_local global i32 0, align 4
@MODEM_STATE_SUCCESS = common dso_local global i32 0, align 4
@MODEM_RESULT_CODE_ERROR = common dso_local global i32 0, align 4
@MODEM_STATE_FAIL = common dso_local global i32 0, align 4
@MODEM_IMEI_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @bg96_handle_cgsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bg96_handle_cgsn(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @ESP_FAIL, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @MODEM_RESULT_CODE_SUCCESS, align 4
  %10 = call i64 @strstr(i8* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = load i32, i32* @MODEM_STATE_SUCCESS, align 4
  %15 = call i32 @esp_modem_process_command_done(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @MODEM_RESULT_CODE_ERROR, align 4
  %19 = call i64 @strstr(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* @MODEM_STATE_FAIL, align 4
  %24 = call i32 @esp_modem_process_command_done(%struct.TYPE_4__* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @MODEM_IMEI_LENGTH, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @snprintf(i32 %28, i64 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @strip_cr_lf_tail(i32 %38, i32 %39)
  %41 = load i32, i32* @ESP_OK, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %25
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %12
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i32 @esp_modem_process_command_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*) #1

declare dso_local i32 @strip_cr_lf_tail(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
