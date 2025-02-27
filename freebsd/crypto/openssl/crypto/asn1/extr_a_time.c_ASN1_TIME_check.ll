; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@V_ASN1_GENERALIZEDTIME = common dso_local global i64 0, align 8
@V_ASN1_UTCTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_TIME_check(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = call i32 @ASN1_GENERALIZEDTIME_check(%struct.TYPE_5__* %10)
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @ASN1_UTCTIME_check(%struct.TYPE_5__* %19)
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %18, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ASN1_GENERALIZEDTIME_check(%struct.TYPE_5__*) #1

declare dso_local i32 @ASN1_UTCTIME_check(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
