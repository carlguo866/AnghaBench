; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_BN_GENCB_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_prime.c_BN_GENCB_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32, %struct.TYPE_6__*)*, i32 (i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_GENCB_call(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %42 [
    i32 1, label %15
    i32 2, label %33
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32, i32)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %26(i32 %27, i32 %28, i32 %31)
  store i32 1, i32* %4, align 4
  br label %44

33:                                               ; preds = %11
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32, %struct.TYPE_6__*)*, i32 (i32, i32, %struct.TYPE_6__*)** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = call i32 %37(i32 %38, i32 %39, %struct.TYPE_6__* %40)
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %11
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %33, %22, %21, %10
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
