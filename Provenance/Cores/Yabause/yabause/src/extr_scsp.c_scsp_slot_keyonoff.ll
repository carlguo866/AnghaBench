; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_keyonoff.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_slot_keyonoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@scsp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scsp_slot_keyonoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsp_slot_keyonoff() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 0), align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i64 0
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  br label %4

4:                                                ; preds = %21, %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i64 32
  %8 = icmp ult %struct.TYPE_5__* %5, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = call i32 @scsp_slot_keyon(%struct.TYPE_5__* %15)
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = call i32 @scsp_slot_keyoff(%struct.TYPE_5__* %18)
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 1
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %1, align 8
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i32 @scsp_slot_keyon(%struct.TYPE_5__*) #1

declare dso_local i32 @scsp_slot_keyoff(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
