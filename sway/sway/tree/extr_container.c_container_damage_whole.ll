; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_damage_whole.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_damage_whole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.sway_container = type { i32 }

@root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_damage_whole(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_output*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.sway_output**, %struct.sway_output*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %18, i64 %20
  %22 = load %struct.sway_output*, %struct.sway_output** %21, align 8
  store %struct.sway_output* %22, %struct.sway_output** %4, align 8
  %23 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %25 = call i32 @output_damage_whole_container(%struct.sway_output* %23, %struct.sway_container* %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @output_damage_whole_container(%struct.sway_output*, %struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
