; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_meth.c_bwrite_conv.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_meth.c_bwrite_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8*, i32)* }

@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwrite_conv(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @INT_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i64, i64* @INT_MAX, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 %21(%struct.TYPE_6__* %22, i8* %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i64*, i64** %9, align 8
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %16
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
