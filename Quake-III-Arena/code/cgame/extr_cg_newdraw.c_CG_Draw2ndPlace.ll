; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_Draw2ndPlace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_Draw2ndPlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SCORE_NOT_PRESENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%2i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float, i32, i32, i32)* @CG_Draw2ndPlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Draw2ndPlace(%struct.TYPE_4__* %0, float %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %12 = load i64, i64* @SCORE_NOT_PRESENT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load float, float* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0), align 8
  %24 = call i32 @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @CG_Text_Paint(i32 %17, i32 %20, float %21, i32 %22, i32 %24, i32 0, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %14, %5
  ret void
}

declare dso_local i32 @CG_Text_Paint(i32, i32, float, i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
