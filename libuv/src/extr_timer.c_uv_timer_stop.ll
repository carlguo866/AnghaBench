; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_timer.c_uv_timer_stop.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_timer.c_uv_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.heap_node = type { i32 }

@timer_less_than = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_timer_stop(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = call i32 @uv__is_active(%struct.TYPE_5__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @timer_heap(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.heap_node*
  %16 = load i32, i32* @timer_less_than, align 4
  %17 = call i32 @heap_remove(i32 %12, %struct.heap_node* %15, i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = call i32 @uv__handle_stop(%struct.TYPE_5__* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %8, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @uv__is_active(%struct.TYPE_5__*) #1

declare dso_local i32 @heap_remove(i32, %struct.heap_node*, i32) #1

declare dso_local i32 @timer_heap(i32) #1

declare dso_local i32 @uv__handle_stop(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
