; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_OilSlickRemove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_OilSlickRemove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"CG_OilSlickRevove NULL id\0A\00", align 1
@active_particles = common dso_local global %struct.TYPE_4__* null, align 8
@P_FLAT_SCALEUP = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@P_FLAT_SCALEUP_FADE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_OilSlickRemove(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @CG_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_particles, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  br label %12

12:                                               ; preds = %45, %10
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @P_FLAT_SCALEUP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 0), align 8
  %32 = add nsw i64 %31, 100
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* @P_FLAT_SCALEUP_FADE, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %30, %24
  br label %44

44:                                               ; preds = %43, %15
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %3, align 8
  br label %12

47:                                               ; preds = %12
  ret void
}

declare dso_local i32 @CG_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
