; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_stopresponse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_stopresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ioResponse = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__card_stopresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_stopresponse(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i32**, i32*** @_ioResponse, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i32*, i32** %6, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = call i64 @__card_stopreadresponse(i64 %5, i32* %9, i32 1)
  store i64 %10, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i32**, i32*** @_ioResponse, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @__check_response(i64 %15, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %14, %12
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @__card_stopreadresponse(i64, i32*, i32) #1

declare dso_local i64 @__check_response(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
