; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_sign.c_ECDSA_do_sign_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_sign.c_ECDSA_do_sign_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@EC_F_ECDSA_DO_SIGN_EX = common dso_local global i32 0, align 4
@EC_R_OPERATION_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ECDSA_do_sign_ex(i8* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32* (i8*, i32, i32*, i32*, %struct.TYPE_6__*)**
  %17 = load i32* (i8*, i32, i32*, i32*, %struct.TYPE_6__*)*, i32* (i8*, i32, i32*, i32*, %struct.TYPE_6__*)** %16, align 8
  %18 = icmp ne i32* (i8*, i32, i32*, i32*, %struct.TYPE_6__*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32* (i8*, i32, i32*, i32*, %struct.TYPE_6__*)**
  %25 = load i32* (i8*, i32, i32*, i32*, %struct.TYPE_6__*)*, i32* (i8*, i32, i32*, i32*, %struct.TYPE_6__*)** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = call i32* %25(i8* %26, i32 %27, i32* %28, i32* %29, %struct.TYPE_6__* %30)
  store i32* %31, i32** %6, align 8
  br label %36

32:                                               ; preds = %5
  %33 = load i32, i32* @EC_F_ECDSA_DO_SIGN_EX, align 4
  %34 = load i32, i32* @EC_R_OPERATION_NOT_SUPPORTED, align 4
  %35 = call i32 @ECerr(i32 %33, i32 %34)
  store i32* null, i32** %6, align 8
  br label %36

36:                                               ; preds = %32, %19
  %37 = load i32*, i32** %6, align 8
  ret i32* %37
}

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
