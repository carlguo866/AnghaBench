; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__add_point.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__add_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, float, float)* @stbtt__add_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__add_point(%struct.TYPE_3__* %0, i32 %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %25

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store float %13, float* %18, align 4
  %19 = load float, float* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store float %19, float* %24, align 4
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
