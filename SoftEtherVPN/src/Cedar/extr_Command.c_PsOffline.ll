; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOffline.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsOffline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsOffline(%struct.TYPE_12__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 %23(%struct.TYPE_12__* %24, i32 %25)
  %27 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %27, i64* %5, align 8
  br label %63

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @ParseCommandList(%struct.TYPE_12__* %29, i8* %30, i32* %31, i32* null, i32 0)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %36, i64* %5, align 8
  br label %63

37:                                               ; preds = %28
  %38 = call i32 @Zero(%struct.TYPE_10__* %13, i32 8)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @StrCpy(i32 %40, i32 4, i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ScSetHubOnline(i32 %48, %struct.TYPE_10__* %13)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @ERR_NO_ERROR, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @CmdPrintError(%struct.TYPE_12__* %54, i64 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @FreeParamValueList(i32* %57)
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %5, align 8
  br label %63

60:                                               ; preds = %37
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @FreeParamValueList(i32* %61)
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %60, %53, %35, %20
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_12__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScSetHubOnline(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
