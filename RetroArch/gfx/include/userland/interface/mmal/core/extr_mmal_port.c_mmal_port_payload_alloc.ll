; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_payload_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_payload_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s(%i:%i) port %p, size %i\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mmal payload\00", align 1
@MEM_FLAG_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mmal_port_payload_alloc(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = icmp ne %struct.TYPE_12__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  store i32* null, i32** %3, align 8
  br label %69

15:                                               ; preds = %9
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28, %struct.TYPE_12__* %29, i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %69

36:                                               ; preds = %15
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32* (%struct.TYPE_12__*, i64)**
  %42 = load i32* (%struct.TYPE_12__*, i64)*, i32* (%struct.TYPE_12__*, i64)** %41, align 8
  %43 = icmp ne i32* (%struct.TYPE_12__*, i64)* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = call i32* @vcos_malloc(i64 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %6, align 8
  br label %61

47:                                               ; preds = %36
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @LOCK_PORT(%struct.TYPE_12__* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32* (%struct.TYPE_12__*, i64)**
  %55 = load i32* (%struct.TYPE_12__*, i64)*, i32* (%struct.TYPE_12__*, i64)** %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32* %55(%struct.TYPE_12__* %56, i64 %57)
  store i32* %58, i32** %6, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = call i32 @UNLOCK_PORT(%struct.TYPE_12__* %59)
  br label %61

61:                                               ; preds = %47, %44
  %62 = load i32*, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = call i32 @mmal_port_acquire(%struct.TYPE_12__* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %6, align 8
  store i32* %68, i32** %3, align 8
  br label %69

69:                                               ; preds = %67, %35, %14
  %70 = load i32*, i32** %3, align 8
  ret i32* %70
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32* @vcos_malloc(i64, i8*) #1

declare dso_local i32 @LOCK_PORT(%struct.TYPE_12__*) #1

declare dso_local i32 @UNLOCK_PORT(%struct.TYPE_12__*) #1

declare dso_local i32 @mmal_port_acquire(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
