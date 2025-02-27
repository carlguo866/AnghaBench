; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ulp/main/extr_ulp_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ulp/main/extr_ulp_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_SLEEP_WAKEUP_ULP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Not ULP wakeup, initializing ULP\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ULP wakeup, saving pulse count\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Entering deep sleep\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @esp_sleep_get_wakeup_cause()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ESP_SLEEP_WAKEUP_ULP, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @init_ulp_program()
  br label %12

9:                                                ; preds = %0
  %10 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (...) @update_pulse_count()
  br label %12

12:                                               ; preds = %9, %6
  %13 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (...) @esp_sleep_enable_ulp_wakeup()
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = call i32 (...) @esp_deep_sleep_start()
  ret void
}

declare dso_local i64 @esp_sleep_get_wakeup_cause(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @init_ulp_program(...) #1

declare dso_local i32 @update_pulse_count(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_sleep_enable_ulp_wakeup(...) #1

declare dso_local i32 @esp_deep_sleep_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
