; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_notifysink_on_tvn_dropdown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_notifysink_on_tvn_dropdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"%p, %p (%lx)\0A\00", align 1
@TB_GETBUTTON = common dso_local global i32 0, align 4
@TPM_RETURNCMD = common dso_local global i32 0, align 4
@TBDDRET_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i64)* @notifysink_on_tvn_dropdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notifysink_on_tvn_dropdown(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GetDlgCtrlID(i32 %16)
  %18 = call %struct.TYPE_18__* @get_cctrl_from_dlgid(%struct.TYPE_22__* %12, i32 %17)
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %27, %struct.TYPE_18__* %28, i64 %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = icmp ne %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %71

33:                                               ; preds = %2
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cctrl_event_OnControlActivating(%struct.TYPE_22__* %34, i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TB_GETBUTTON, align 4
  %43 = ptrtoint %struct.TYPE_19__* %8 to i64
  %44 = call i32 @SendMessageW(i32 %41, i32 %42, i32 0, i64 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ClientToScreen(i32 %47, %struct.TYPE_20__* %7)
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @TPM_RETURNCMD, align 4
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @TrackPopupMenu(i32 %51, i32 %52, i32 %54, i32 %56, i32 0, i32 %59, i32* null)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %33
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @cctrl_event_OnItemSelected(%struct.TYPE_22__* %64, i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %63, %33
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i32, i32* @TBDDRET_DEFAULT, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_18__* @get_cctrl_from_dlgid(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @GetDlgCtrlID(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_22__*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @cctrl_event_OnControlActivating(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i64) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @TrackPopupMenu(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cctrl_event_OnItemSelected(%struct.TYPE_22__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
