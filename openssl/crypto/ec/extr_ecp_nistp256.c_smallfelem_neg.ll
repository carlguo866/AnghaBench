; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_neg.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero105 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @smallfelem_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smallfelem_neg(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** @zero105, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %11, i64* %13, align 8
  %14 = load i64*, i64** @zero105, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %20, i64* %22, align 8
  %23 = load i64*, i64** @zero105, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %29, i64* %31, align 8
  %32 = load i64*, i64** @zero105, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  store i64 %38, i64* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
