; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_put_temp_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_asn1.c_asn_put_temp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_buf = type { i64, i32* }

@TEMP_LEN = common dso_local global i64 0, align 8
@ASN_ERR_EOBUF = common dso_local global i32 0, align 4
@ASN_MAXLEN = common dso_local global i32 0, align 4
@ASN_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn_put_temp_header(%struct.asn_buf* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asn_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store %struct.asn_buf* %0, %struct.asn_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %10 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TEMP_LEN, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ASN_ERR_EOBUF, align 4
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %18 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32**, i32*** %7, align 8
  store i32* %19, i32** %20, align 8
  %21 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ASN_MAXLEN, align 4
  %24 = call i32 @asn_put_header(%struct.asn_buf* %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @ASN_ERR_OK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load %struct.asn_buf*, %struct.asn_buf** %5, align 8
  %29 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @TEMP_LEN, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = icmp eq i32* %30, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %27, %16
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @asn_put_header(%struct.asn_buf*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
