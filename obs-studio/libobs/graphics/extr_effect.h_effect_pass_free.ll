; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.h_effect_pass_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.h_effect_pass_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_effect_pass = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_effect_pass*)* @effect_pass_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @effect_pass_free(%struct.gs_effect_pass* %0) #0 {
  %2 = alloca %struct.gs_effect_pass*, align 8
  store %struct.gs_effect_pass* %0, %struct.gs_effect_pass** %2, align 8
  %3 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %2, align 8
  %4 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @bfree(i32 %5)
  %7 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %2, align 8
  %8 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @da_free(i32 %9)
  %11 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %2, align 8
  %12 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @da_free(i32 %13)
  %15 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %2, align 8
  %16 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gs_shader_destroy(i32 %17)
  %19 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %2, align 8
  %20 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gs_shader_destroy(i32 %21)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @gs_shader_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
