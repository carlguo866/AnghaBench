; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseWarmup.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseWarmup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CS_WARMUP = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ParseWarmup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ParseWarmup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CS_WARMUP, align 4
  %4 = call i8* @CG_ConfigString(i32 %3)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @atoi(i8* %5)
  store i32 %6, i32* %2, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %24

13:                                               ; preds = %9, %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 1, i32 0), align 8
  %21 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %22 = call i32 @trap_S_StartLocalSound(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16, %13
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  ret void
}

declare dso_local i8* @CG_ConfigString(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
