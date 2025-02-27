; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_limit_buckets.c_serf_limit_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_limit_buckets.c_serf_limit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@APR_EOF = common dso_local global i64 0, align 8
@SERF_READ_ALL_AVAIL = common dso_local global i64 0, align 8
@REQUESTED_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i8**, i64*)* @serf_limit_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serf_limit_read(%struct.TYPE_4__* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64*, i64** %9, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* @APR_EOF, align 8
  store i64 %21, i64* %5, align 8
  br label %75

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26, %22
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REQUESTED_MAX, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  br label %44

42:                                               ; preds = %32
  %43 = load i64, i64* @REQUESTED_MAX, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = call i64 @serf_bucket_read(i32 %48, i64 %49, i8** %50, i64* %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @SERF_BUCKET_READ_ERROR(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %45
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %56, %45
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* @APR_EOF, align 8
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %71, %68, %63
  %74 = load i64, i64* %11, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %73, %19
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i64 @serf_bucket_read(i32, i64, i8**, i64*) #1

declare dso_local i32 @SERF_BUCKET_READ_ERROR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
