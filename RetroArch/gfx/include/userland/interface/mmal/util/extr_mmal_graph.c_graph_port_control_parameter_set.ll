; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_control_parameter_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_control_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_14__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32*)* }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32*)* @graph_port_control_parameter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_port_control_parameter_set(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %6, align 8
  %16 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32*)*, i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32*)** %19, align 8
  %21 = icmp ne i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32*)* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32*)*, i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32*)** %25, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 %26(%struct.TYPE_14__* %28, %struct.TYPE_12__* %29, i32* %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @MMAL_ENOSYS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %3, align 8
  br label %68

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %2
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @MMAL_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i1 [ false, %39 ], [ %48, %45 ]
  br i1 %50, label %51, label %66

51:                                               ; preds = %49
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %54, i64 %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @mmal_port_parameter_set(i32 %60, i32* %61)
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %39

66:                                               ; preds = %49
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %66, %35
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local i64 @mmal_port_parameter_set(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
