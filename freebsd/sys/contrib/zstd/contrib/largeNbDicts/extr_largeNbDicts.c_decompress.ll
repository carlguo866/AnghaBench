; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decompress(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ZSTD_decompress_usingDDict(i32 %17, i8* %18, i64 %19, i8* %20, i64 %21, i32 %30)
  store i64 %31, i64* %12, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp uge i64 %40, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %5
  %50 = load i64, i64* %12, align 8
  ret i64 %50
}

declare dso_local i64 @ZSTD_decompress_usingDDict(i32, i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
