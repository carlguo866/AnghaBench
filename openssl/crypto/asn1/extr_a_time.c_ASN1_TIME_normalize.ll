; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_normalize.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@V_ASN1_UNDEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_TIME_normalize(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tm, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @ASN1_TIME_to_tm(i32* %5, %struct.tm* %4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @V_ASN1_UNDEF, align 4
  %12 = call i32* @asn1_time_from_tm(i32* %10, %struct.tm* %4, i32 %11)
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @ASN1_TIME_to_tm(i32*, %struct.tm*) #1

declare dso_local i32* @asn1_time_from_tm(i32*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
