; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_adj_match_dir.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_adj_match_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIND_NEXT_MATCH_DOWN = common dso_local global i64 0, align 8
@MATCH_TINKER_PATTERN_DOWN = common dso_local global i64 0, align 8
@FIND_NEXT_MATCH_UP = common dso_local global i64 0, align 8
@MATCH_TINKER_PATTERN_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @adj_match_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adj_match_dir(i64* %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @FIND_NEXT_MATCH_DOWN, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @MATCH_TINKER_PATTERN_DOWN, align 8
  %9 = load i64*, i64** %2, align 8
  store i64 %8, i64* %9, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load i64*, i64** %2, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FIND_NEXT_MATCH_UP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i64, i64* @MATCH_TINKER_PATTERN_UP, align 8
  %17 = load i64*, i64** %2, align 8
  store i64 %16, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
