; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_finish_writing_split_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_finish_writing_split_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32 }
%struct.split_index = type { i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_writing_split_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.split_index*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = load %struct.index_state*, %struct.index_state** %2, align 8
  %5 = call %struct.split_index* @init_split_index(%struct.index_state* %4)
  store %struct.split_index* %5, %struct.split_index** %3, align 8
  %6 = load %struct.split_index*, %struct.split_index** %3, align 8
  %7 = getelementptr inbounds %struct.split_index, %struct.split_index* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @ewah_free(i32* %8)
  %10 = load %struct.split_index*, %struct.split_index** %3, align 8
  %11 = getelementptr inbounds %struct.split_index, %struct.split_index* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ewah_free(i32* %12)
  %14 = load %struct.split_index*, %struct.split_index** %3, align 8
  %15 = getelementptr inbounds %struct.split_index, %struct.split_index* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.split_index*, %struct.split_index** %3, align 8
  %17 = getelementptr inbounds %struct.split_index, %struct.split_index* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.index_state*, %struct.index_state** %2, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free(i32 %20)
  %22 = load %struct.split_index*, %struct.split_index** %3, align 8
  %23 = getelementptr inbounds %struct.split_index, %struct.split_index* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.index_state*, %struct.index_state** %2, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.split_index*, %struct.split_index** %3, align 8
  %28 = getelementptr inbounds %struct.split_index, %struct.split_index* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.index_state*, %struct.index_state** %2, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local %struct.split_index* @init_split_index(%struct.index_state*) #1

declare dso_local i32 @ewah_free(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
