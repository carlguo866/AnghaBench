; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_CalcVrect.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_CalcVrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@cg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@cg_viewsize = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"cg_viewsize\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@cgs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_CalcVrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_CalcVrect() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %3 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PM_INTERMISSION, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 100, i32* %1, align 4
  br label %23

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_viewsize, i32 0, i32 0), align 4
  %11 = icmp slt i32 %10, 30
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 30, i32* %1, align 4
  br label %22

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_viewsize, i32 0, i32 0), align 4
  %16 = icmp sgt i32 %15, 100
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 100, i32* %1, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_viewsize, i32 0, i32 0), align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %12
  br label %23

23:                                               ; preds = %22, %8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0, i32 0), align 4
  %25 = load i32, i32* %1, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 100
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 0), align 8
  %29 = and i32 %28, -2
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 0), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0, i32 1), align 4
  %31 = load i32, i32* %1, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 100
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 1), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 1), align 4
  %35 = and i32 %34, -2
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 1), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0, i32 0), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 0), align 8
  %38 = sub nsw i32 %36, %37
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 2), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgs, i32 0, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 1), align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0, i32 3), align 4
  ret void
}

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
