; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_move_index_extensions.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_move_index_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_index_extensions(%struct.index_state* %0, %struct.index_state* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.index_state*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.index_state* %1, %struct.index_state** %4, align 8
  %5 = load %struct.index_state*, %struct.index_state** %4, align 8
  %6 = getelementptr inbounds %struct.index_state, %struct.index_state* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.index_state*, %struct.index_state** %3, align 8
  %9 = getelementptr inbounds %struct.index_state, %struct.index_state* %8, i32 0, i32 1
  store i32* %7, i32** %9, align 8
  %10 = load %struct.index_state*, %struct.index_state** %4, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.index_state*, %struct.index_state** %4, align 8
  %13 = getelementptr inbounds %struct.index_state, %struct.index_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.index_state*, %struct.index_state** %3, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
