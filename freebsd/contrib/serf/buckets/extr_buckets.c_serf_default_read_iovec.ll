; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_default_read_iovec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_default_read_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i64, i8**, i64*)* }
%struct.iovec = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf_default_read_iovec(%struct.TYPE_6__* %0, i64 %1, i32 %2, %struct.iovec* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_6__*, i64, i8**, i64*)*, i32 (%struct.TYPE_6__*, i64, i8**, i64*)** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 %18(%struct.TYPE_6__* %19, i64 %20, i8** %11, i64* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.iovec*, %struct.iovec** %9, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i64 0
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.iovec*, %struct.iovec** %9, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i64 0
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i32*, i32** %10, align 8
  store i32 1, i32* %33, align 4
  br label %36

34:                                               ; preds = %5
  %35 = load i32*, i32** %10, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i32, i32* %13, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
