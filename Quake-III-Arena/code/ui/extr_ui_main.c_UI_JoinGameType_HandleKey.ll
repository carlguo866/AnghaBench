; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_JoinGameType_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_JoinGameType_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@ui_joinGameType = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"ui_joinGameType\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float*, i32)* @UI_JoinGameType_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_JoinGameType_HandleKey(i32 %0, float* %1, i32 %2) #0 {
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
  br i1 %22, label %23, label %52

23:                                               ; preds = %19, %15, %11, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @K_MOUSE2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  br label %33

30:                                               ; preds = %23
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %38 = sub nsw i64 %37, 1
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  br label %45

39:                                               ; preds = %33
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_joinGameType, i32 0, i32 0), align 8
  %47 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @qtrue, align 4
  %50 = call i32 @UI_BuildServerDisplayList(i32 %49)
  %51 = load i32, i32* @qtrue, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %19
  %53 = load i32, i32* @qfalse, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i64) #1

declare dso_local i32 @UI_BuildServerDisplayList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
