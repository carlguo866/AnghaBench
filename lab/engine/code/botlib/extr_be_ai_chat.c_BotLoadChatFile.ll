; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadChatFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotLoadChatFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 (i32, i8*, i8*, i8*)* }
%struct.TYPE_6__ = type { i64 }

@BLERR_CANNOTLOADICHAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4
@ichatdata = common dso_local global %struct.TYPE_7__** null, align 8
@BLERR_NOERROR = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ichatdata table full; couldn't load chat %s from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't load chat %s from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotLoadChatFile(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_6__* @BotChatStateFromHandle(i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @BLERR_CANNOTLOADICHAT, align 4
  store i32 %16, i32* %4, align 4
  br label %144

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @BotFreeChatFile(i32 %18)
  %20 = call i32 @LibVarGetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %89, label %22

22:                                               ; preds = %17
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %75, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MAX_CLIENTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %34
  br label %75

40:                                               ; preds = %27
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @strcmp(i8* %41, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %75

52:                                               ; preds = %40
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp(i8* %53, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %75

64:                                               ; preds = %52
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %74, i32* %4, align 4
  br label %144

75:                                               ; preds = %63, %51, %39
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %23

78:                                               ; preds = %23
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %83 = load i32, i32* @PRT_FATAL, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 %82(i32 %83, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  %87 = load i32, i32* @BLERR_CANNOTLOADICHAT, align 4
  store i32 %87, i32* %4, align 4
  br label %144

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %17
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @BotLoadInitialChat(i8* %90, i8* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %89
  %100 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @botimport, i32 0, i32 0), align 8
  %101 = load i32, i32* @PRT_FATAL, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 %100(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %102, i8* %103)
  %105 = load i32, i32* @BLERR_CANNOTLOADICHAT, align 4
  store i32 %105, i32* %4, align 4
  br label %144

106:                                              ; preds = %89
  %107 = call i32 @LibVarGetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %142, label %109

109:                                              ; preds = %106
  %110 = call %struct.TYPE_7__* @GetClearedMemory(i32 4)
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %111, i64 %113
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %118, i64 %120
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  store i64 %117, i64* %123, align 8
  %124 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %124, i64 %126
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @Q_strncpyz(i32 %130, i8* %131, i32 4)
  %133 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ichatdata, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %133, i64 %135
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @Q_strncpyz(i32 %139, i8* %140, i32 4)
  br label %142

142:                                              ; preds = %109, %106
  %143 = load i32, i32* @BLERR_NOERROR, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %99, %81, %64, %15
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_6__* @BotChatStateFromHandle(i32) #1

declare dso_local i32 @BotFreeChatFile(i32) #1

declare dso_local i32 @LibVarGetValue(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @BotLoadInitialChat(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @GetClearedMemory(i32) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
