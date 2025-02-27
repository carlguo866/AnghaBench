; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsListenerDisable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsListenerDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[port]\00", align 1
@CmdPromptPort = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CMD_ListenerDisable_PortPrompt\00", align 1
@CmdEvalPort = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsListenerDisable(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca [1 x %struct.TYPE_9__], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  %17 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %20 = load i32, i32* @CmdPromptPort, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %24 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %26 = load i32, i32* @CmdEvalPort, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %14, i64 0, i64 0
  %32 = call i32* @ParseCommandList(i32* %28, i8* %29, i32* %30, %struct.TYPE_9__* %31, i32 1)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %36, i64* %5, align 8
  br label %61

37:                                               ; preds = %4
  %38 = call i32 @Zero(%struct.TYPE_7__* %13, i32 8)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @GetParamStr(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @ToInt(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ScEnableListener(i32 %46, %struct.TYPE_7__* %13)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @ERR_NO_ERROR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @CmdPrintError(i32* %52, i64 %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @FreeParamValueList(i32* %55)
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %5, align 8
  br label %61

58:                                               ; preds = %37
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @FreeParamValueList(i32* %59)
  store i64 0, i64* %5, align 8
  br label %61

61:                                               ; preds = %58, %51, %35
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(i32*, i8*, i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ToInt(i32) #1

declare dso_local i32 @GetParamStr(i32*, i8*) #1

declare dso_local i64 @ScEnableListener(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CmdPrintError(i32*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
