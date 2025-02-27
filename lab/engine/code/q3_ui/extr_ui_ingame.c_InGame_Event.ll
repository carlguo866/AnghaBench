; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_ingame.c_InGame_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_ingame.c_InGame_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RESTART ARENA?\00", align 1
@InGame_RestartAction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"EXIT GAME?\00", align 1
@InGame_QuitAction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InGame_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %32

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %32 [
    i32 128, label %14
    i32 129, label %16
    i32 132, label %18
    i32 134, label %21
    i32 130, label %24
    i32 135, label %26
    i32 133, label %28
    i32 131, label %30
  ]

14:                                               ; preds = %9
  %15 = call i32 (...) @UI_TeamMainMenu()
  br label %32

16:                                               ; preds = %9
  %17 = call i32 (...) @UI_SetupMenu()
  br label %32

18:                                               ; preds = %9
  %19 = load i32, i32* @InGame_RestartAction, align 4
  %20 = call i32 @UI_ConfirmMenu(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i32 %19)
  br label %32

21:                                               ; preds = %9
  %22 = load i32, i32* @InGame_QuitAction, align 4
  %23 = call i32 @UI_ConfirmMenu(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %22)
  br label %32

24:                                               ; preds = %9
  %25 = call i32 (...) @UI_ServerInfoMenu()
  br label %32

26:                                               ; preds = %9
  %27 = call i32 (...) @UI_AddBotsMenu()
  br label %32

28:                                               ; preds = %9
  %29 = call i32 (...) @UI_RemoveBotsMenu()
  br label %32

30:                                               ; preds = %9
  %31 = call i32 (...) @UI_PopMenu()
  br label %32

32:                                               ; preds = %8, %9, %30, %28, %26, %24, %21, %18, %16, %14
  ret void
}

declare dso_local i32 @UI_TeamMainMenu(...) #1

declare dso_local i32 @UI_SetupMenu(...) #1

declare dso_local i32 @UI_ConfirmMenu(i8*, i32, i32) #1

declare dso_local i32 @UI_ServerInfoMenu(...) #1

declare dso_local i32 @UI_AddBotsMenu(...) #1

declare dso_local i32 @UI_RemoveBotsMenu(...) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
