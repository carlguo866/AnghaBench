; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_NetGameType_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_NetGameType_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@ui_netGameType = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@uiInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"ui_netGameType\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ui_actualnetGameType\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ui_currentNetMap\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@qfalse = common dso_local global i32 0, align 4
@FEEDER_ALLMAPS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float*, i32)* @UI_NetGameType_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_NetGameType_HandleKey(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @K_MOUSE1, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @K_MOUSE2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @K_ENTER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @K_KP_ENTER, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %19, %15, %11, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @K_MOUSE2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  br label %33

30:                                               ; preds = %23
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  %35 = icmp ult i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %38 = sub i64 %37, 1
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  br label %45

39:                                               ; preds = %33
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0), align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  %47 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 1), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui_netGameType, i32 0, i32 0), align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @qfalse, align 4
  %58 = call i32 @UI_MapCountByGameType(i32 %57)
  %59 = load i32, i32* @FEEDER_ALLMAPS, align 4
  %60 = call i32 @Menu_SetFeederSelection(i32* null, i32 %59, i32 0, i32* null)
  %61 = load i32, i32* @qtrue, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %19
  %63 = load i32, i32* @qfalse, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %45
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i8* @va(i8*, i64) #1

declare dso_local i32 @UI_MapCountByGameType(i32) #1

declare dso_local i32 @Menu_SetFeederSelection(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
