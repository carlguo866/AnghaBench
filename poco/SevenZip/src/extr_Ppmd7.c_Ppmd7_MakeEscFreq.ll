; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_Ppmd7.c_Ppmd7_MakeEscFreq.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_Ppmd7.c_Ppmd7_MakeEscFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64*, i32, %struct.TYPE_7__, %struct.TYPE_10__*, %struct.TYPE_7__** }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @Ppmd7_MakeEscFreq(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 256
  br i1 %22, label %23, label %103

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = call %struct.TYPE_9__* @SUFFIX(%struct.TYPE_10__* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %44, %49
  %51 = icmp ult i32 %37, %50
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 11, %64
  %66 = icmp ult i32 %59, %65
  %67 = zext i1 %66 to i32
  %68 = mul nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ugt i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = mul nsw i32 4, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %81
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %7, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = lshr i32 %85, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub i32 %92, %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = add i32 %97, %100
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  br label %107

103:                                              ; preds = %3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %7, align 8
  %106 = load i32*, i32** %6, align 8
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %23
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %108
}

declare dso_local %struct.TYPE_9__* @SUFFIX(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
