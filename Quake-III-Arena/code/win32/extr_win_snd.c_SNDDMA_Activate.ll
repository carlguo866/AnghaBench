; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_snd.c_SNDDMA_Activate.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_snd.c_SNDDMA_Activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, i32, i32)* }
%struct.TYPE_7__ = type { i32 }

@pDS = common dso_local global %struct.TYPE_6__* null, align 8
@DS_OK = common dso_local global i64 0, align 8
@g_wv = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"sound SetCooperativeLevel failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SNDDMA_Activate() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pDS, align 8
  %2 = icmp ne %struct.TYPE_6__* %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %19

4:                                                ; preds = %0
  %5 = load i64, i64* @DS_OK, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pDS, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64 (%struct.TYPE_6__*, i32, i32)*, i64 (%struct.TYPE_6__*, i32, i32)** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pDS, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_wv, i32 0, i32 0), align 4
  %13 = load i32, i32* @DSSCL_PRIORITY, align 4
  %14 = call i64 %10(%struct.TYPE_6__* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %5, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @SNDDMA_Shutdown()
  br label %19

19:                                               ; preds = %3, %16, %4
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @SNDDMA_Shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
