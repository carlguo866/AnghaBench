; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_div.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec2*, %struct.vec2*, %struct.vec2*)* @vec2_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec2_div(%struct.vec2* %0, %struct.vec2* %1, %struct.vec2* %2) #0 {
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca %struct.vec2*, align 8
  %6 = alloca %struct.vec2*, align 8
  store %struct.vec2* %0, %struct.vec2** %4, align 8
  store %struct.vec2* %1, %struct.vec2** %5, align 8
  store %struct.vec2* %2, %struct.vec2** %6, align 8
  %7 = load %struct.vec2*, %struct.vec2** %4, align 8
  %8 = load %struct.vec2*, %struct.vec2** %5, align 8
  %9 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vec2*, %struct.vec2** %6, align 8
  %12 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %10, %13
  %15 = load %struct.vec2*, %struct.vec2** %5, align 8
  %16 = getelementptr inbounds %struct.vec2, %struct.vec2* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vec2*, %struct.vec2** %6, align 8
  %19 = getelementptr inbounds %struct.vec2, %struct.vec2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  %22 = call i32 @vec2_set(%struct.vec2* %7, i32 %14, i32 %21)
  ret void
}

declare dso_local i32 @vec2_set(%struct.vec2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
