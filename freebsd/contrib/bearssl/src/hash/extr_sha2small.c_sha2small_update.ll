; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha2small.c_sha2small_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha2small.c_sha2small_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @sha2small_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha2small_update(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, 63
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %59, %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 64, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @memcpy(i64 %36, i8* %37, i64 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %49, 64
  br i1 %50, label %51, label %59

51:                                               ; preds = %31
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @br_sha2small_round(i64 %54, i32 %57)
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %51, %31
  br label %20

60:                                               ; preds = %20
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @br_sha2small_round(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
