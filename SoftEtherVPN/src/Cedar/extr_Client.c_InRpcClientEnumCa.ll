; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientEnumCa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_InRpcClientEnumCa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"NumItem\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SubjectName\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"IssuerName\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Expires\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcClientEnumCa(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %71

13:                                               ; preds = %9
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_6__* %14, i32 16)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PackGetNum(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @ZeroMalloc(i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_5__**
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store %struct.TYPE_5__** %27, %struct.TYPE_5__*** %29, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %68, %13
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %30
  %38 = call i8* @ZeroMalloc(i32 16)
  %39 = bitcast i8* %38 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %44
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @PackGetIntEx(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @PackGetUniStrEx(i32* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 4, i64 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @PackGetUniStrEx(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 4, i64 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @PackGetInt64Ex(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %37
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %30

71:                                               ; preds = %12, %30
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PackGetNum(i32*, i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetUniStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @PackGetInt64Ex(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
