; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_sub.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*)* @sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 16
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %15, %19
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %11
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %8

27:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
