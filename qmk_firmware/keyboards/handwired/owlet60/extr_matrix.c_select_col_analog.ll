; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/owlet60/extr_matrix.c_select_col_analog.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/owlet60/extr_matrix.c_select_col_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_in_binary = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_col_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_col_analog(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %44 [
    i32 0, label %4
    i32 1, label %9
    i32 2, label %14
    i32 3, label %19
    i32 4, label %24
    i32 5, label %29
    i32 6, label %34
    i32 7, label %39
  ]

4:                                                ; preds = %1
  %5 = load i32*, i32** @num_in_binary, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mux_pin_control(i32 %7)
  br label %45

9:                                                ; preds = %1
  %10 = load i32*, i32** @num_in_binary, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mux_pin_control(i32 %12)
  br label %45

14:                                               ; preds = %1
  %15 = load i32*, i32** @num_in_binary, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mux_pin_control(i32 %17)
  br label %45

19:                                               ; preds = %1
  %20 = load i32*, i32** @num_in_binary, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mux_pin_control(i32 %22)
  br label %45

24:                                               ; preds = %1
  %25 = load i32*, i32** @num_in_binary, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mux_pin_control(i32 %27)
  br label %45

29:                                               ; preds = %1
  %30 = load i32*, i32** @num_in_binary, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mux_pin_control(i32 %32)
  br label %45

34:                                               ; preds = %1
  %35 = load i32*, i32** @num_in_binary, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mux_pin_control(i32 %37)
  br label %45

39:                                               ; preds = %1
  %40 = load i32*, i32** @num_in_binary, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mux_pin_control(i32 %42)
  br label %45

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %44, %39, %34, %29, %24, %19, %14, %9, %4
  ret void
}

declare dso_local i32 @mux_pin_control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
