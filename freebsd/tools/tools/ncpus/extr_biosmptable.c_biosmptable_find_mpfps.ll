; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_find_mpfps.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_find_mpfps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @biosmptable_find_mpfps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @biosmptable_find_mpfps() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @PTOV(i32 1038)
  %5 = call i32 @memread(i32 %4, i32* %3, i32 4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %25

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 4
  %11 = call i32 @PTOV(i32 %10)
  %12 = call i32* @biosmptable_search_mpfps(i32 %11, i32 1024)
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32*, i32** %2, align 8
  store i32* %16, i32** %1, align 8
  br label %25

17:                                               ; preds = %8
  %18 = call i32 @PTOV(i32 983040)
  %19 = call i32* @biosmptable_search_mpfps(i32 %18, i32 65536)
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  store i32* %23, i32** %1, align 8
  br label %25

24:                                               ; preds = %17
  store i32* null, i32** %1, align 8
  br label %25

25:                                               ; preds = %24, %22, %15, %7
  %26 = load i32*, i32** %1, align 8
  ret i32* %26
}

declare dso_local i32 @memread(i32, i32*, i32) #1

declare dso_local i32 @PTOV(i32) #1

declare dso_local i32* @biosmptable_search_mpfps(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
