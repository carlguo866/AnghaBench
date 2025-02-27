; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_transform_function.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-ext/arg/extr_arg-transform-functions.c_jerryx_arg_transform_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@JERRY_ERROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"It is not a function.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jerryx_arg_transform_function(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @jerryx_arg_js_iterator_pop(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @jerry_value_is_function(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %15 = call i32 @jerry_create_error(i32 %14, i32* bitcast ([22 x i8]* @.str to i32*))
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @jerry_acquire_value(i32 %20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = call i32 (...) @jerry_create_undefined()
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @jerryx_arg_js_iterator_pop(i32*) #1

declare dso_local i32 @jerry_value_is_function(i32) #1

declare dso_local i32 @jerry_create_error(i32, i32*) #1

declare dso_local i32 @jerry_acquire_value(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
