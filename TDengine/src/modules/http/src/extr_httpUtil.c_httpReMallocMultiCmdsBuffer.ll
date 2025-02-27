; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpUtil.c_httpReMallocMultiCmdsBuffer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpUtil.c_httpReMallocMultiCmdsBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@HTTP_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"context:%p, fd:%d, ip:%s, user:%s, mulitcmd buffer size:%d large then %d\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"context:%p, fd:%d, ip:%s, user:%s, malloc buffer:%d error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpReMallocMultiCmdsBuffer(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HTTP_MAX_BUFFER_SIZE, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HTTP_MAX_BUFFER_SIZE, align 4
  %26 = call i32 (i8*, %struct.TYPE_6__*, i32, i32, i32, i32, ...) @httpError(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %14, i32 %17, i32 %20, i32 %23, i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %73

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = call i64 @realloc(i8* %30, i64 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %27
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i8*, %struct.TYPE_6__*, i32, i32, i32, i32, ...) @httpError(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %42, i32 %45, i32 %48, i32 %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %73

54:                                               ; preds = %27
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = call i32 @memset(i8* %62, i32 0, i64 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %54, %41, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @httpError(i8*, %struct.TYPE_6__*, i32, i32, i32, i32, ...) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
