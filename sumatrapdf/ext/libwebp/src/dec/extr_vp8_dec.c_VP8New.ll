; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_VP8New.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_VP8New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @VP8New() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i64 @WebPSafeCalloc(i64 1, i32 24)
  %3 = inttoptr i64 %2 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %8 = call i32 @SetOk(%struct.TYPE_5__* %7)
  %9 = call %struct.TYPE_6__* (...) @WebPGetWorkerInterface()
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = call i32 %11(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = call i32 (...) @InitGetCoeffs()
  br label %20

20:                                               ; preds = %6, %0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %21
}

declare dso_local i64 @WebPSafeCalloc(i64, i32) #1

declare dso_local i32 @SetOk(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @WebPGetWorkerInterface(...) #1

declare dso_local i32 @InitGetCoeffs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
