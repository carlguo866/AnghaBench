; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_do_alg_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_do_alg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @do_alg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alg_test(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %14 = sext i32 %13 to i64
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i64 [ %9, %11 ], [ %14, %12 ]
  %17 = trunc i64 %16 to i32
  %18 = call i64 @crypto_has_alg(i8* %7, i64 %8, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  ret i32 %25
}

declare dso_local i64 @crypto_has_alg(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
