; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_tme.h_IS_DELETABLE.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_tme.h_IS_DELETABLE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.timeval = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@DELTA_READ = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_5__*)* @IS_DELETABLE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IS_DELETABLE(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.timeval*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.timeval*
  store %struct.timeval* %8, %struct.timeval** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %3, align 8
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %3, align 8
  br label %41

26:                                               ; preds = %16
  %27 = load %struct.timeval*, %struct.timeval** %6, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DELTA_READ, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %3, align 8
  br label %41

39:                                               ; preds = %26
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %39, %37, %24, %14
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
