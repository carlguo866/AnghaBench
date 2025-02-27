; ModuleID = '/home/carl/AnghaBench/lede/target/linux/brcm47xx/image/lzma-loader/src/extr_LzmaDecode.c_RangeDecoderBitDecode.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/brcm47xx/image/lzma-loader/src/extr_LzmaDecode.c_RangeDecoderBitDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@kNumBitModelTotalBits = common dso_local global i64 0, align 8
@kBitModelTotal = common dso_local global i64 0, align 8
@kNumMoveBits = common dso_local global i64 0, align 8
@kTopValue = common dso_local global i64 0, align 8
@ReadByte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RangeDecoderBitDecode(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @kNumBitModelTotalBits, align 8
  %11 = ashr i64 %9, %10
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = mul nsw i64 %11, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @kBitModelTotal, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %24, %26
  %28 = load i64, i64* @kNumMoveBits, align 8
  %29 = ashr i64 %27, %28
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %29
  store i64 %32, i64* %30, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @kTopValue, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %20
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 %41, 8
  %43 = load i32, i32* @ReadByte, align 4
  %44 = sext i32 %43 to i64
  %45 = or i64 %42, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = shl i64 %50, 8
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %38, %20
  store i32 0, i32* %3, align 4
  br label %91

53:                                               ; preds = %2
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @kNumMoveBits, align 8
  %67 = ashr i64 %65, %66
  %68 = load i64*, i64** %4, align 8
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %67
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @kTopValue, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %53
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = shl i64 %79, 8
  %81 = load i32, i32* @ReadByte, align 4
  %82 = sext i32 %81 to i64
  %83 = or i64 %80, %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = shl i64 %88, 8
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %76, %53
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %52
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
