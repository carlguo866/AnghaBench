; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_G_Voice.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_G_Voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@g_gametype = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@SAY_TEAM = common dso_local global i32 0, align 4
@SAY_ALL = common dso_local global i32 0, align 4
@g_dedicated = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"voice: %s %s\0A\00", align 1
@level = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@g_entities = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_Voice(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 8
  %14 = load i64, i64* @GT_TEAM, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SAY_TEAM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SAY_ALL, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %16, %5
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @G_VoiceTo(%struct.TYPE_14__* %26, %struct.TYPE_14__* %27, i32 %28, i8* %29, i32 %30)
  br label %63

32:                                               ; preds = %22
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_dedicated, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @G_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %35, %32
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_entities, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 %52
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %12, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @G_VoiceTo(%struct.TYPE_14__* %54, %struct.TYPE_14__* %55, i32 %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %45

63:                                               ; preds = %25, %45
  ret void
}

declare dso_local i32 @G_VoiceTo(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @G_Printf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
