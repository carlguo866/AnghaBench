; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayfunction_override.c_is_default_array_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_arrayfunction_override.c_is_default_array_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_default_array_function.ndarray_array_function = internal global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_default_array_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_default_array_function(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** @is_default_array_function.ndarray_array_function, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32* (...) @get_ndarray_array_function()
  store i32* %6, i32** @is_default_array_function.ndarray_array_function, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32*, i32** %2, align 8
  %9 = load i32*, i32** @is_default_array_function.ndarray_array_function, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i32* @get_ndarray_array_function(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
