; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_desx_hw.c_cipher_hw_desx_cbc.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_desx_hw.c_cipher_hw_desx_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*, i64)* @cipher_hw_desx_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_hw_desx_cbc(%struct.TYPE_5__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %9, align 8
  br label %12

12:                                               ; preds = %16, %4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @MAXCHUNK, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* @MAXCHUNK, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DES_xcbc_encrypt(i8* %17, i8* %18, i64 %19, i32* %21, i32* %25, i32* %27, i32* %29, i32 %32)
  %34 = load i64, i64* @MAXCHUNK, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* @MAXCHUNK, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %7, align 8
  %40 = load i64, i64* @MAXCHUNK, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %6, align 8
  br label %12

43:                                               ; preds = %12
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @DES_xcbc_encrypt(i8* %47, i8* %48, i64 %49, i32* %51, i32* %55, i32* %57, i32* %59, i32 %62)
  br label %64

64:                                               ; preds = %46, %43
  ret i32 1
}

declare dso_local i32 @DES_xcbc_encrypt(i8*, i8*, i64, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
