; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_StopAllAdditionalConnectThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_StopAllAdditionalConnectThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"c->ConnectingThreads: %u\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StopAllAdditionalConnectThread(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  br label %101

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @LockList(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @LIST_NUM(i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32** @ToArray(i32 %26)
  store i32** %27, i32*** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DeleteAll(i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @UnlockList(i32 %34)
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %51, %15
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32**, i32*** %5, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @Disconnect(i32* %44)
  %46 = load i32**, i32*** %5, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @ReleaseSock(i32* %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %36

54:                                               ; preds = %36
  %55 = load i32**, i32*** %5, align 8
  %56 = call i32 @Free(i32** %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LockList(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @LIST_NUM(i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @Debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32** @ToArray(i32 %69)
  store i32** %70, i32*** %6, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DeleteAll(i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @UnlockList(i32 %77)
  store i64 0, i64* %3, align 8
  br label %79

79:                                               ; preds = %95, %54
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load i32**, i32*** %6, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @INFINITE, align 4
  %89 = call i32 @WaitThread(i32* %87, i32 %88)
  %90 = load i32**, i32*** %6, align 8
  %91 = load i64, i64* %3, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @ReleaseThread(i32* %93)
  br label %95

95:                                               ; preds = %83
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %3, align 8
  br label %79

98:                                               ; preds = %79
  %99 = load i32**, i32*** %6, align 8
  %100 = call i32 @Free(i32** %99)
  br label %101

101:                                              ; preds = %98, %14
  ret void
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32** @ToArray(i32) #1

declare dso_local i32 @DeleteAll(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

declare dso_local i32 @Free(i32**) #1

declare dso_local i32 @Debug(i8*, i64) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
