; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findObjectByDumpId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findObjectByDumpId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allocedDumpIds = common dso_local global i64 0, align 8
@dumpIdMap = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @findObjectByDumpId(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ule i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @allocedDumpIds, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store i32* null, i32** %2, align 8
  br label %16

11:                                               ; preds = %6
  %12 = load i32**, i32*** @dumpIdMap, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %2, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i32*, i32** %2, align 8
  ret i32* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
