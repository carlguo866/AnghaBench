; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_NotifyEndEdit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_NotifyEndEdit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@CBEMAXSTRLEN = common dso_local global i32 0, align 4
@CBEN_ENDEDITW = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@CBEN_ENDEDITA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_7__*, i32)* @COMBOEX_NotifyEndEdit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBOEX_NotifyEndEdit(%struct.TYPE_9__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CBEMAXSTRLEN, align 4
  %19 = call i32 @lstrcpynW(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load i32, i32* @CBEN_ENDEDITW, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = call i32 @COMBOEX_Notify(%struct.TYPE_9__* %20, i32 %21, i32* %23)
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CBEMAXSTRLEN, align 4
  %43 = call i32 @WideCharToMultiByte(i32 %38, i32 0, i32 %39, i32 -1, i32 %41, i32 %42, i32 0, i32 0)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = load i32, i32* @CBEN_ENDEDITA, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %51 = call i32 @COMBOEX_Notify(%struct.TYPE_9__* %48, i32 %49, i32* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %25, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @lstrcpynW(i32, i32, i32) #1

declare dso_local i32 @COMBOEX_Notify(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
