; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_get_len_price.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_get_len_price.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64** }

@MATCH_LEN_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64)* @get_len_price to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_len_price(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64**, i64*** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds i64*, i64** %9, i64 %10
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MATCH_LEN_MIN, align 8
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  ret i64 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
