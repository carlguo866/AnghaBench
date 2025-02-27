; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_FEATURE_PROMISE = common dso_local global i32 0, align 4
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Promise is disabled!\0A\00", align 1
@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @JERRY_FEATURE_PROMISE, align 4
  %3 = call i32 @jerry_is_feature_enabled(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %7 = call i32 @jerry_port_log(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %10 = call i32 @jerry_init(i32 %9)
  %11 = call i32 (...) @test_promise_resolve_fail()
  %12 = call i32 (...) @test_promise_resolve_success()
  %13 = call i32 (...) @test_promise_from_js()
  %14 = call i32 (...) @jerry_cleanup()
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %8, %5
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @jerry_is_feature_enabled(i32) #1

declare dso_local i32 @jerry_port_log(i32, i8*) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @test_promise_resolve_fail(...) #1

declare dso_local i32 @test_promise_resolve_success(...) #1

declare dso_local i32 @test_promise_from_js(...) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
