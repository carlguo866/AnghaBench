; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_ts_comp_function_setup.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_ts_comp_function_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ts_comp_function_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_comp_function_setup(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = call i32 @function_setup(%struct.TYPE_11__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = call %struct.TYPE_10__* @GET_RES_INFO(%struct.TYPE_11__* %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %5, align 8
  %16 = call %struct.TYPE_12__* @tsBufCreate(i32 0)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %10, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @function_setup(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @GET_RES_INFO(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @tsBufCreate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
