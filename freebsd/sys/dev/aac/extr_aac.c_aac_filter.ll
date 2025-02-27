; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_DB_RESPONSE_READY = common dso_local global i32 0, align 4
@taskqueue_fast = common dso_local global i32 0, align 4
@AAC_DB_PRINTF = common dso_local global i32 0, align 4
@AAC_DB_COMMAND_READY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.aac_softc*
  store %struct.aac_softc* %6, %struct.aac_softc** %3, align 8
  %7 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(%struct.aac_softc* %7, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %11 = call i32 @AAC_GET_ISTATUS(%struct.aac_softc* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc* %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AAC_DB_RESPONSE_READY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @taskqueue_fast, align 4
  %21 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %22 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %21, i32 0, i32 2
  %23 = call i32 @taskqueue_enqueue(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AAC_DB_PRINTF, align 4
  %27 = load i32, i32* @AAC_DB_COMMAND_READY, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AAC_DB_PRINTF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %47 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 32, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %36, %31
  %53 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %54 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @wakeup(i32 %55)
  br label %57

57:                                               ; preds = %52, %24
  %58 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_GET_ISTATUS(%struct.aac_softc*) #1

declare dso_local i32 @AAC_CLEAR_ISTATUS(%struct.aac_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
