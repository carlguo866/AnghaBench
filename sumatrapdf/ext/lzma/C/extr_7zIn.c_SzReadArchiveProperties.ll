; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zIn.c_SzReadArchiveProperties.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zIn.c_SzReadArchiveProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@k7zIdEnd = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @SzReadArchiveProperties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzReadArchiveProperties(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @SzReadID(i32* %5, i64* %3)
  %7 = call i32 @RINOK(i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @k7zIdEnd, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %15

12:                                               ; preds = %4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @SzSkeepData(i32* %13)
  br label %4

15:                                               ; preds = %11
  %16 = load i32, i32* @SZ_OK, align 4
  ret i32 %16
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @SzReadID(i32*, i64*) #1

declare dso_local i32 @SzSkeepData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
