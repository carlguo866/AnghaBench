; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AIEnter_Intermission.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AIEnter_Intermission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"intermission\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AINode_Intermission = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AIEnter_Intermission(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @BotRecordNodeSwitch(%struct.TYPE_6__* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @BotResetState(%struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i64 @BotChat_EndLevel(%struct.TYPE_6__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trap_BotEnterChat(i32 %16, i32 0, i32 %19)
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i32, i32* @AINode_Intermission, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @BotRecordNodeSwitch(%struct.TYPE_6__*, i8*, i8*, i8*) #1

declare dso_local i32 @BotResetState(%struct.TYPE_6__*) #1

declare dso_local i64 @BotChat_EndLevel(%struct.TYPE_6__*) #1

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
