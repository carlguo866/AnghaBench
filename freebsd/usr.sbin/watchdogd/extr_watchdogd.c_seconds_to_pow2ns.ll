; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_seconds_to_pow2ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_seconds_to_pow2ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"seconds %d < 0\00", align 1
@debugging = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"shifted %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"seconds_to_pow2ns: seconds: %d, ns %lld, power %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @seconds_to_pow2ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seconds_to_pow2ns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1000000000
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @flsll(i64 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = shl i64 1, %17
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %22, %11
  %26 = load i64, i64* @debugging, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %32, i64 %33, i32 %35)
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i64, i64* %3, align 8
  %39 = trunc i64 %38 to i32
  ret i32 %39
}

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i64 @flsll(i64) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
