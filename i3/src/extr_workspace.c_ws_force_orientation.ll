; ModuleID = '/home/carl/AnghaBench/i3/src/extr_workspace.c_ws_force_orientation.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_workspace.c_ws_force_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [13 x i8] c"Moving cons\0A\00", align 1
@HORIZ = common dso_local global i64 0, align 8
@L_SPLITH = common dso_local global %struct.TYPE_16__* null, align 8
@L_SPLITV = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"split->layout = %d, ws->layout = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Attaching new split (%p) to ws (%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ws_force_orientation(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call %struct.TYPE_16__* @con_new(i32* null, i32* null)
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %11, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = call %struct.TYPE_16__** @get_focus_order(%struct.TYPE_16__* %17)
  store %struct.TYPE_16__** %18, %struct.TYPE_16__*** %6, align 8
  %19 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %26, %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = call i32 @TAILQ_EMPTY(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = call %struct.TYPE_16__* @TAILQ_FIRST(i32* %28)
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %7, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = call i32 @con_detach(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = call i32 @con_attach(%struct.TYPE_16__* %32, %struct.TYPE_16__* %33, i32 1)
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %38 = call i32 @set_focus_order(%struct.TYPE_16__* %36, %struct.TYPE_16__** %37)
  %39 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %40 = call i32 @free(%struct.TYPE_16__** %39)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @HORIZ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** @L_SPLITH, align 8
  br label %48

46:                                               ; preds = %35
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** @L_SPLITV, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %struct.TYPE_16__* [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %54, %struct.TYPE_16__* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %59, %struct.TYPE_16__* %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = call i32 @con_attach(%struct.TYPE_16__* %62, %struct.TYPE_16__* %63, i32 0)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = call i32 @con_fix_percent(%struct.TYPE_16__* %65)
  ret void
}

declare dso_local %struct.TYPE_16__* @con_new(i32*, i32*) #1

declare dso_local %struct.TYPE_16__** @get_focus_order(%struct.TYPE_16__*) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_16__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @con_detach(%struct.TYPE_16__*) #1

declare dso_local i32 @con_attach(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_focus_order(%struct.TYPE_16__*, %struct.TYPE_16__**) #1

declare dso_local i32 @free(%struct.TYPE_16__**) #1

declare dso_local i32 @con_fix_percent(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
