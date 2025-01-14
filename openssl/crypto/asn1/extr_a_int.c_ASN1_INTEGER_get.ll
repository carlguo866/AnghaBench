; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_ASN1_INTEGER_get.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_ASN1_INTEGER_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MAX = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ASN1_INTEGER_get(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %26

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ASN1_INTEGER_get_int64(i64* %5, i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i64 -1, i64* %2, align 8
  br label %26

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @LONG_MAX, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @LONG_MIN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store i64 -1, i64* %2, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %24, %23, %14, %8
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i32 @ASN1_INTEGER_get_int64(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
