; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/nuttx-stm32f4/extr_jerry_main.c_register_js_function.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/nuttx-stm32f4/extr_jerry_main.c_register_js_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_LOG_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Warning: failed to register '%s' method.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @register_js_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_js_function(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @jerryx_handler_register_global(i32* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @jerry_value_is_error(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @JERRY_LOG_LEVEL_WARNING, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @jerry_port_log(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @jerry_release_value(i32 %18)
  ret void
}

declare dso_local i32 @jerryx_handler_register_global(i32*, i32) #1

declare dso_local i64 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_port_log(i32, i8*, i8*) #1

declare dso_local i32 @jerry_release_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
