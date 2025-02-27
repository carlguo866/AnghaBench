; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_charclass.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_charclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCLASS_UPPER = common dso_local global i32 0, align 4
@CCLASS_LOWER = common dso_local global i32 0, align 4
@CCLASS_DIGIT = common dso_local global i32 0, align 4
@CCLASS_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @charclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charclass(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = call i64 @ISUPPER(i8 zeroext %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @CCLASS_UPPER, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i8, i8* %3, align 1
  %11 = call i64 @ISLOWER(i8 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @CCLASS_LOWER, align 4
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %9
  %16 = load i8, i8* %3, align 1
  %17 = call i64 @ISDIGIT(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @CCLASS_DIGIT, align 4
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @CCLASS_OTHER, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19, %13, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @ISUPPER(i8 zeroext) #1

declare dso_local i64 @ISLOWER(i8 zeroext) #1

declare dso_local i64 @ISDIGIT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
