; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_param_push_num.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_param_push_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CRYPTO_F_PARAM_PUSH_NUM = common dso_local global i32 0, align 4
@CRYPTO_R_TOO_MANY_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, i32)* @param_push_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_push_num(i32* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.TYPE_3__* @param_push(i32* %13, i8* %14, i64 %15, i64 %16, i32 %17, i32 0)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %12, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %35

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = icmp ugt i64 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @CRYPTO_F_PARAM_PUSH_NUM, align 4
  %27 = load i32, i32* @CRYPTO_R_TOO_MANY_BYTES, align 4
  %28 = call i32 @CRYPTOerr(i32 %26, i32 %27)
  store i32 0, i32* %6, align 4
  br label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @memcpy(i32* %31, i8* %32, i64 %33)
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %25, %21
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_3__* @param_push(i32*, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
