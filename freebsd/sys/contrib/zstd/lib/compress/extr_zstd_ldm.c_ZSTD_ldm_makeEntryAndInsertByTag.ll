; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_makeEntryAndInsertByTag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_makeEntryAndInsertByTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @ZSTD_ldm_makeEntryAndInsertByTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_ldm_makeEntryAndInsertByTag(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %4, i32* %16, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ZSTD_ldm_getTag(i32 %17, i32 %18, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ZSTD_ldm_getSmallHash(i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ZSTD_ldm_getChecksum(i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %10, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = bitcast %struct.TYPE_7__* %15 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ZSTD_ldm_insertEntry(i32* %40, i32 %41, i64 %43, i32 %45)
  br label %47

47:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @ZSTD_ldm_getTag(i32, i32, i32) #1

declare dso_local i32 @ZSTD_ldm_getSmallHash(i32, i32) #1

declare dso_local i32 @ZSTD_ldm_getChecksum(i32, i32) #1

declare dso_local i32 @ZSTD_ldm_insertEntry(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
