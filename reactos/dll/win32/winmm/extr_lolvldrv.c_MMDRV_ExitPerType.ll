; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_ExitPerType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_ExitPerType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i64, i64, i64)* }

@.str = private unnamed_addr constant [12 x i8] c"(%p, %04x)\0A\00", align 1
@DRVM_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"DRVM_EXIT => %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DRVM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @MMDRV_ExitPerType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMDRV_ExitPerType(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 (i8*, %struct.TYPE_6__*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %12, i64 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, i64, i64, i64)*, i32 (i32, i32, i64, i64, i64)** %16, align 8
  %18 = icmp ne i32 (i32, i32, i64, i64, i64)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, i64, i64, i64)*, i32 (i32, i32, i64, i64, i64)** %21, align 8
  %23 = load i32, i32* @DRVM_EXIT, align 4
  %24 = call i32 %22(i32 0, i32 %23, i64 0, i64 0, i64 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WINMM_ErrorToString(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_6__*
  %29 = call i32 (i8*, %struct.TYPE_6__*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %19, %2
  %31 = load i32, i32* @TRUE, align 4
  ret i32 %31
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, ...) #1

declare dso_local i32 @WINMM_ErrorToString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
