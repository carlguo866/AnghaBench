; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_mp_decoder_wrapper_get_video_dec_params.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_mp_decoder_wrapper_get_video_dec_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder_wrapper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { %struct.mp_image_params }
%struct.mp_image_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_decoder_wrapper_get_video_dec_params(%struct.mp_decoder_wrapper* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca %struct.mp_decoder_wrapper*, align 8
  %4 = alloca %struct.mp_image_params*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.mp_decoder_wrapper* %0, %struct.mp_decoder_wrapper** %3, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %4, align 8
  %6 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %3, align 8
  %7 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %5, align 8
  %11 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %12 = load %struct.priv*, %struct.priv** %5, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  %14 = bitcast %struct.mp_image_params* %11 to i8*
  %15 = bitcast %struct.mp_image_params* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
