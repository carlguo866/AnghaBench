; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/kdf/extr_hkdf.c_br_hkdf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/kdf/extr_hkdf.c_br_hkdf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@BR_HKDF_NO_SALT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_hkdf_init(%struct.TYPE_5__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** @BR_HKDF_NO_SALT, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %15, i8** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @br_digest_size(i32* %16)
  store i64 %17, i64* %8, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @memset(i8* %18, i32 0, i64 %19)
  br label %21

21:                                               ; preds = %14, %4
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @br_hmac_key_init(i32* %9, i32* %22, i8* %23, i64 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @br_hmac_init(i32* %28, i32* %9, i32 0)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @br_hmac_size(i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i64 @br_digest_size(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @br_hmac_key_init(i32*, i32*, i8*, i64) #1

declare dso_local i32 @br_hmac_init(i32*, i32*, i32) #1

declare dso_local i32 @br_hmac_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
