; ModuleID = '/home/carl/AnghaBench/htop/extr_Panel.c_Panel_setSelected.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Panel.c_Panel_setSelected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@EVENT_SET_SELECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Panel_setSelected(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @Vector_size(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = call i64 @Panel_eventHandlerFn(%struct.TYPE_5__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = load i32, i32* @EVENT_SET_SELECTED, align 4
  %34 = call i32 @Panel_eventHandler(%struct.TYPE_5__* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Vector_size(i32) #1

declare dso_local i64 @Panel_eventHandlerFn(%struct.TYPE_5__*) #1

declare dso_local i32 @Panel_eventHandler(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
