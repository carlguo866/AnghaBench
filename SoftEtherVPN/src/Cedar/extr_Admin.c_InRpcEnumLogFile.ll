; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumLogFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"NumItem\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"FilePath\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"FileSize\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"UpdatedTime\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcEnumLogFile(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %67

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_7__* %14, i32 16)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PackGetInt(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.TYPE_6__* @ZeroMalloc(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %64, %13
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %6, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @PackGetStrEx(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 4, i64 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @PackGetStrEx(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 4, i64 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @PackGetIntEx(i32* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @PackGetInt64Ex(i32* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %36
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %29

67:                                               ; preds = %12, %29
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PackGetInt(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i32 @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetInt64Ex(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
