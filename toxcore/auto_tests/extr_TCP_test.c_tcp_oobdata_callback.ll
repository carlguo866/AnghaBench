; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_tcp_oobdata_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_tcp_oobdata_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Gentoo\00", align 1
@tcp_oobdata_callback_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32*, i32)* @tcp_oobdata_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_oobdata_callback(i8* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 6
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %31

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @memcmp(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %6, align 4
  br label %31

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @tcp_send_oob_packet(i8* %22, i32 %23, i32* %24, i32* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* @tcp_oobdata_callback_called, align 4
  br label %30

30:                                               ; preds = %29, %21
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %20, %14
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @tcp_send_oob_packet(i8*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
