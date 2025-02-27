; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/common/extr_xxhash.c_XXH64_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/common/extr_xxhash.c_XXH64_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XXH_CPU_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@XXH_littleEndian = common dso_local global i64 0, align 8
@XXH_FORCE_NATIVE_FORMAT = common dso_local global i64 0, align 8
@XXH_bigEndian = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XXH64_digest(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @XXH_CPU_LITTLE_ENDIAN, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @XXH_littleEndian, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @XXH_FORCE_NATIVE_FORMAT, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* @XXH_littleEndian, align 8
  %16 = call i64 @XXH64_digest_endian(i32* %14, i64 %15)
  store i64 %16, i64* %2, align 8
  br label %21

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* @XXH_bigEndian, align 8
  %20 = call i64 @XXH64_digest_endian(i32* %18, i64 %19)
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i64 @XXH64_digest_endian(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
