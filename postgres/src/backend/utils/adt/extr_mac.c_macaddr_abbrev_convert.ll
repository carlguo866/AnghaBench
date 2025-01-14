; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_mac.c_macaddr_abbrev_convert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_mac.c_macaddr_abbrev_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@SIZEOF_DATUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_5__*)* @macaddr_abbrev_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @macaddr_abbrev_convert(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32* @DatumGetMacaddrP(i64 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @SIZEOF_DATUM, align 4
  %16 = call i32 @memcpy(i64* %7, i32* %14, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @hash_uint32(i32 %30)
  %32 = call i32 @DatumGetUInt32(i32 %31)
  %33 = call i32 @addHyperLogLog(i32* %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %2
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @DatumBigEndianToNative(i64 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local i32* @DatumGetMacaddrP(i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @addHyperLogLog(i32*, i32) #1

declare dso_local i32 @DatumGetUInt32(i32) #1

declare dso_local i32 @hash_uint32(i32) #1

declare dso_local i64 @DatumBigEndianToNative(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
