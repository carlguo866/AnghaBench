; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_team.c_TeamMain_MenuEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_team.c_TeamMain_MenuEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmd team red\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cmd team blue\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cmd team free\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cmd team spectator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @TeamMain_MenuEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TeamMain_MenuEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %30

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 131, label %18
    i32 130, label %22
    i32 128, label %26
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* @EXEC_APPEND, align 4
  %16 = call i32 @trap_Cmd_ExecuteText(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @UI_ForceMenuOff()
  br label %30

18:                                               ; preds = %9
  %19 = load i32, i32* @EXEC_APPEND, align 4
  %20 = call i32 @trap_Cmd_ExecuteText(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 (...) @UI_ForceMenuOff()
  br label %30

22:                                               ; preds = %9
  %23 = load i32, i32* @EXEC_APPEND, align 4
  %24 = call i32 @trap_Cmd_ExecuteText(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 (...) @UI_ForceMenuOff()
  br label %30

26:                                               ; preds = %9
  %27 = load i32, i32* @EXEC_APPEND, align 4
  %28 = call i32 @trap_Cmd_ExecuteText(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 (...) @UI_ForceMenuOff()
  br label %30

30:                                               ; preds = %8, %9, %26, %22, %18, %14
  ret void
}

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i32 @UI_ForceMenuOff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
