; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_update.c_UPDATE_close.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_update.c_UPDATE_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*)* @UPDATE_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UPDATE_close(%struct.tagMSIVIEW* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tagMSIVIEW*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %3, align 8
  %6 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %3, align 8
  %7 = bitcast %struct.tagMSIVIEW* %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i32 %22(%struct.TYPE_7__* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
