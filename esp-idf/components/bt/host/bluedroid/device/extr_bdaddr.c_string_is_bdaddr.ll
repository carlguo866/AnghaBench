; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/device/extr_bdaddr.c_string_is_bdaddr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/device/extr_bdaddr.c_string_is_bdaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_is_bdaddr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 17
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  %23 = urem i64 %22, 3
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 58
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %51

33:                                               ; preds = %25, %20
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  %36 = urem i64 %35, 3
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @ets_isxdigit(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %51

46:                                               ; preds = %38, %33
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %16

50:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %32, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ets_isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
