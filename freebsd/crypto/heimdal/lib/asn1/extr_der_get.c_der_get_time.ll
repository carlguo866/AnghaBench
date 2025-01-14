; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_BAD_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i64*)* @der_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @der_get_time(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, 1
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @ASN1_BAD_LENGTH, align 4
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 1
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @generalizedtime2time(i8* %37, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i64*, i64** %9, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i64, i64* %7, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %29
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %27, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @generalizedtime2time(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
