; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_get_space.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_get_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, %struct.ao_pull_state* }
%struct.ao_pull_state = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @get_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_space(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_pull_state*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %4 = load %struct.ao*, %struct.ao** %2, align 8
  %5 = getelementptr inbounds %struct.ao, %struct.ao* %4, i32 0, i32 2
  %6 = load %struct.ao_pull_state*, %struct.ao_pull_state** %5, align 8
  store %struct.ao_pull_state* %6, %struct.ao_pull_state** %3, align 8
  %7 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %8 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mp_ring_available(i32 %16)
  %18 = load %struct.ao*, %struct.ao** %2, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  ret i32 %21
}

declare dso_local i32 @mp_ring_available(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
