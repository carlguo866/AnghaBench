; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonstring.c_h2o_hex_decode.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonstring.c_h2o_hex_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_hex_decode(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = urem i64 %12, 2
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @decode_hex(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @decode_hex(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  store i32 -1, i32* %4, align 4
  br label %47

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %37, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  store i8 %40, i8* %41, align 1
  br label %43

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 2
  store i64 %45, i64* %7, align 8
  br label %17

46:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %34, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @decode_hex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
