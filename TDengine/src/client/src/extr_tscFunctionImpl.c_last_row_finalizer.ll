; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_last_row_finalizer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_last_row_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@SECONDARY_STAGE_MERGE = common dso_local global i64 0, align 8
@DATA_SET_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @last_row_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_row_finalizer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SECONDARY_STAGE_MERGE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = call %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DATA_SET_FLAG, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %9
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @setNull(i32 %20, i32 %23, i32 %26)
  br label %37

28:                                               ; preds = %9
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = call %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__* %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__* %34)
  %36 = call i32 @resetResultInfo(%struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %30, %17
  ret void
}

declare dso_local %struct.TYPE_7__* @GET_RES_INFO(%struct.TYPE_8__*) #1

declare dso_local i32 @setNull(i32, i32, i32) #1

declare dso_local i32 @resetResultInfo(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
