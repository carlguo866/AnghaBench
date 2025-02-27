; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_octetstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_get_octetstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i32 }

@ASN_ERR_OK = common dso_local global i32 0, align 4
@ASN_TYPE_OCTETSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"bad type for octetstring (%u)\00", align 1
@ASN_ERR_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_get_octetstring(%struct.asn_buf* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %12 = call i32 @asn_get_header(%struct.asn_buf* %11, i64* %9, i32* %10)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @ASN_ERR_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @ASN_TYPE_OCTETSTRING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @asn_error(%struct.asn_buf* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @ASN_ERR_TAG, align 4
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %17
  %27 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i64*, i64** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @asn_get_octetstring_raw(%struct.asn_buf* %27, i32 %28, i64* %29, i32* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %21, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @asn_get_header(%struct.asn_buf*, i64*, i32*) #1

declare dso_local i32 @asn_error(%struct.asn_buf*, i8*, i64) #1

declare dso_local i32 @asn_get_octetstring_raw(%struct.asn_buf*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
