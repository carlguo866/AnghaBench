; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_AllocAndInit.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_AllocAndInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@kEndPosModelIndex = common dso_local global i32 0, align 4
@kDicLogSizeMax = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @LzmaEnc_AllocAndInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_AllocAndInit(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @kEndPosModelIndex, align 4
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %25, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @kDicLogSizeMax, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 1, %20
  %22 = icmp ule i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i32, i32* %9, align 4
  %30 = mul i32 %29, 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @False, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @SZ_OK, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @LzmaEnc_Alloc(%struct.TYPE_6__* %39, i32 %40, i32 %41, i32 %42)
  %44 = call i32 @RINOK(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = call i32 @LzmaEnc_Init(%struct.TYPE_6__* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = call i32 @LzmaEnc_InitPrices(%struct.TYPE_6__* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @SZ_OK, align 4
  ret i32 %51
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @LzmaEnc_Alloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @LzmaEnc_Init(%struct.TYPE_6__*) #1

declare dso_local i32 @LzmaEnc_InitPrices(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
