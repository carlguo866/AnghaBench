; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_fillHashTable.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_fillHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__, i64* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@HASH_READ_SIZE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i64)* @ZSTD_fillHashTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_fillHashTable(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %10, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32*, i32** @HASH_READ_SIZE, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %11, align 8
  store i64 3, i64* %12, align 8
  br label %38

38:                                               ; preds = %42, %3
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ule i32* %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = load i64*, i64** %7, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @ZSTD_hashPtr(i32* %50, i64 %51, i64 %52)
  %54 = getelementptr inbounds i64, i64* %49, i64 %53
  store i64 %48, i64* %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32* %56, i32** %10, align 8
  br label %38

57:                                               ; preds = %38
  ret void
}

declare dso_local i64 @ZSTD_hashPtr(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
