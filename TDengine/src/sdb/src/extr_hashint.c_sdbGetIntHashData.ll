; ModuleID = '/home/carl/AnghaBench/TDengine/src/sdb/src/extr_hashint.c_sdbGetIntHashData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/sdb/src/extr_hashint.c_sdbGetIntHashData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sdbGetIntHashData(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i8* null, i8** %3, align 8
  br label %56

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @sdbHashLong(%struct.TYPE_5__* %24, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %7, align 8
  br label %34

34:                                               ; preds = %44, %23
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %7, align 8
  br label %34

48:                                               ; preds = %43, %34
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %3, align 8
  br label %56

55:                                               ; preds = %48
  store i8* null, i8** %3, align 8
  br label %56

56:                                               ; preds = %55, %51, %22
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i32 @sdbHashLong(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
