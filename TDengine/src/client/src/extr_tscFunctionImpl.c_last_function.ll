; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_last_function.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_last_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@TSQL_SO_ASC = common dso_local global i64 0, align 8
@DATA_SET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @last_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_function(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @IS_DATA_BLOCK_LOADED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TSQL_SO_ASC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  br label %70

19:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %63, %19
  %25 = load i64, i64* %4, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__* %28, i64 %29)
  store i8* %30, i8** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @isNull(i8* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %63

43:                                               ; preds = %35, %27
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32 %46, i8* %47, i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = call i32 @DO_UPDATE_TAG_COLUMNS(%struct.TYPE_10__* %52, i32 0)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = call %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__* %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %6, align 8
  %56 = load i32, i32* @DATA_SET_FLAG, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %66

63:                                               ; preds = %42
  %64 = load i64, i64* %4, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %4, align 8
  br label %24

66:                                               ; preds = %43, %24
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @SET_VAL(%struct.TYPE_10__* %67, i64 %68, i32 1)
  br label %70

70:                                               ; preds = %66, %18
  ret void
}

declare dso_local i32 @IS_DATA_BLOCK_LOADED(i32) #1

declare dso_local i8* @GET_INPUT_CHAR_INDEX(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @DO_UPDATE_TAG_COLUMNS(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_9__* @GET_RES_INFO(%struct.TYPE_10__*) #1

declare dso_local i32 @SET_VAL(%struct.TYPE_10__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
