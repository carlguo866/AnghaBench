; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_adaptive_keyboard_get_next_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_adaptive_keyboard_get_next_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adaptive_keyboard_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adaptive_keyboard_get_next_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adaptive_keyboard_get_next_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @adaptive_keyboard_modes, align 8
  %6 = call i32 @ARRAY_SIZE(i32* %5)
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32*, i32** @adaptive_keyboard_modes, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %9

25:                                               ; preds = %20, %9
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  br label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32*, i32** @adaptive_keyboard_modes, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
