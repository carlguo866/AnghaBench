; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_shiftOut_lsbFirst.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_pins_teensy.c_shiftOut_lsbFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIGH = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shiftOut_lsbFirst(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @digitalWrite(i32 %12, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @HIGH, align 4
  %19 = call i32 @digitalWrite(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LOW, align 4
  %22 = call i32 @digitalWrite(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

26:                                               ; preds = %8
  ret void
}

declare dso_local i32 @digitalWrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
