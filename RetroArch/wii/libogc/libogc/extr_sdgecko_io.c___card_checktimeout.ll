; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_checktimeout.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_checktimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TB_TIMER_CLOCK = common dso_local global i32 0, align 4
@CARDIO_OP_TIMEDOUT = common dso_local global i32 0, align 4
@_ioError = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @__card_checktimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__card_checktimeout(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @gettick()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 -1, %17
  %19 = add nsw i32 %16, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @TB_TIMER_CLOCK, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %40

33:                                               ; preds = %25
  %34 = load i32, i32* @CARDIO_OP_TIMEDOUT, align 4
  %35 = load i32*, i32** @_ioError, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %32
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @gettick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
