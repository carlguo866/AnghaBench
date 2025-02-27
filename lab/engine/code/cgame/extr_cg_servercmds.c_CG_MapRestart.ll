; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_MapRestart.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_MapRestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64*, i32, i8*, i8*, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_8__ = type { i64 }

@cg_showmiss = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"CG_MapRestart\0A\00", align 1
@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cg_thirdPerson\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@cg_recordSPDemo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cg_recordSPDemoName = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cg_singlePlayerActive = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_MapRestart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_MapRestart() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_showmiss, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @CG_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @CG_InitLocalEntities()
  %7 = call i32 (...) @CG_InitMarkPolys()
  %8 = call i32 (...) @CG_ClearParticles()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 4), align 8
  %9 = load i8*, i8** @qfalse, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3), align 8
  %10 = load i8*, i8** @qfalse, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %11 = load i32, i32* @qtrue, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1), align 8
  %12 = call i32 (...) @CG_StartMusic()
  %13 = load i32, i32* @qtrue, align 4
  %14 = call i32 @trap_S_ClearLoopingSounds(i32 %13)
  %15 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @CG_InitLocalEntities(...) #1

declare dso_local i32 @CG_InitMarkPolys(...) #1

declare dso_local i32 @CG_ClearParticles(...) #1

declare dso_local i32 @CG_StartMusic(...) #1

declare dso_local i32 @trap_S_ClearLoopingSounds(i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
