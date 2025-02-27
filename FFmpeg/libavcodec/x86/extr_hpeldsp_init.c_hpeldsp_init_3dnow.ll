; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_hpeldsp_init.c_hpeldsp_init_3dnow.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_hpeldsp_init.c_hpeldsp_init_3dnow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32**, i32** }

@AV_CODEC_FLAG_BITEXACT = common dso_local global i32 0, align 4
@avg_approx_pixels16_xy2_3dnow = common dso_local global i32 0, align 4
@avg_pixels16_3dnow = common dso_local global i32 0, align 4
@avg_pixels16_x2_3dnow = common dso_local global i32 0, align 4
@avg_pixels16_xy2_3dnow = common dso_local global i32 0, align 4
@avg_pixels16_y2_3dnow = common dso_local global i32 0, align 4
@ff_avg_approx_pixels8_xy2_3dnow = common dso_local global i32 0, align 4
@ff_avg_pixels8_3dnow = common dso_local global i32 0, align 4
@ff_avg_pixels8_x2_3dnow = common dso_local global i32 0, align 4
@ff_avg_pixels8_xy2_3dnow = common dso_local global i32 0, align 4
@ff_avg_pixels8_y2_3dnow = common dso_local global i32 0, align 4
@ff_put_no_rnd_pixels8_x2_3dnow = common dso_local global i32 0, align 4
@ff_put_no_rnd_pixels8_y2_3dnow = common dso_local global i32 0, align 4
@ff_put_pixels16_x2_3dnow = common dso_local global i32 0, align 4
@ff_put_pixels8_x2_3dnow = common dso_local global i32 0, align 4
@ff_put_pixels8_y2_3dnow = common dso_local global i32 0, align 4
@put_no_rnd_pixels16_x2_3dnow = common dso_local global i32 0, align 4
@put_no_rnd_pixels16_y2_3dnow = common dso_local global i32 0, align 4
@put_pixels16_y2_3dnow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @hpeldsp_init_3dnow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpeldsp_init_3dnow(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
