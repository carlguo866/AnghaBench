; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_utctime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_utctime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_utctime(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @_heim_time2generalizedtime(i32 %14, %struct.TYPE_4__* %10, i32 0)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %38

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @der_put_octet_string(i8* %21, i64 %22, %struct.TYPE_4__* %10, i64* %11)
  store i32 %23, i32* %12, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free(i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %20
  %32 = load i64*, i64** %9, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* %11, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %29, %18
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @_heim_time2generalizedtime(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @der_put_octet_string(i8*, i64, %struct.TYPE_4__*, i64*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
