; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_felem_sum64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_felem_sum64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @felem_sum64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @felem_sum64(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 5
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %3, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 5
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 6
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 6
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 7
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 7
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %3, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 8
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
