; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_AllocTmpArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_AllocTmpArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i64 }

@tmpaasworld = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @AAS_AllocTmpArea() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i64 @GetClearedMemory(i32 24)
  %3 = inttoptr i64 %2 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 2), align 8
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 2), align 8
  %6 = sext i32 %4 to i64
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i64 %6, i64* %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 1), align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 1), align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 1), align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  br label %20

20:                                               ; preds = %16, %0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 1), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 0), align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tmpaasworld, i32 0, i32 0), align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %24
}

declare dso_local i64 @GetClearedMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
