; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_random_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_random_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_key.keybuf = internal global [512 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*)* @random_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @random_key(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i64* %0, i64** %2, align 8
  %6 = call i32 (...) @pcg32_random()
  %7 = sext i32 %6 to i64
  %8 = urem i64 %7, 511
  %9 = add i64 %8, 1
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %20, %15
  %17 = call i32 (...) @pcg32_random()
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  br label %20

20:                                               ; preds = %16
  %21 = load i8, i8* %5, align 1
  %22 = call i32 @isgraph(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %16, label %25

25:                                               ; preds = %20
  %26 = load i8, i8* %5, align 1
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* @random_key.keybuf, i64 0, i64 %28
  store i8 %26, i8* %29, align 1
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %2, align 8
  store i64 %35, i64* %36, align 8
  ret i8* getelementptr inbounds ([512 x i8], [512 x i8]* @random_key.keybuf, i64 0, i64 0)
}

declare dso_local i32 @pcg32_random(...) #1

declare dso_local i32 @isgraph(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
