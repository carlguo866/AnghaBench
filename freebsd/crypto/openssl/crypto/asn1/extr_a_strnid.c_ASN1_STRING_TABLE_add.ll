; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_TABLE_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_TABLE_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@ASN1_F_ASN1_STRING_TABLE_ADD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@STABLE_FLAGS_MALLOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_STRING_TABLE_add(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_3__* @stable_get(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* @ASN1_F_ASN1_STRING_TABLE_ADD, align 4
  %19 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %20 = call i32 @ASN1err(i32 %18, i32 %19)
  store i32 0, i32* %6, align 4
  br label %52

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %9, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i64, i64* @STABLE_FLAGS_MALLOC, align 8
  %47 = load i64, i64* %11, align 8
  %48 = or i64 %46, %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %42
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %17
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_3__* @stable_get(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
