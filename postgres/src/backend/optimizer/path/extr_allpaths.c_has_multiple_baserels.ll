; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_has_multiple_baserels.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_has_multiple_baserels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@RELOPT_BASEREL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @has_multiple_baserels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_multiple_baserels(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 1, i64* %5, align 8
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %36

23:                                               ; preds = %13
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RELOPT_BASEREL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %40

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
