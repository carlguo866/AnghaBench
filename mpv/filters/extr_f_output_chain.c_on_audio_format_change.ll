; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_on_audio_format_change.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_on_audio_format_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chain = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @on_audio_format_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_audio_format_change(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.chain*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.chain*
  store %struct.chain* %5, %struct.chain** %3, align 8
  %6 = load %struct.chain*, %struct.chain** %3, align 8
  %7 = getelementptr inbounds %struct.chain, %struct.chain* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.chain*, %struct.chain** %3, align 8
  %11 = getelementptr inbounds %struct.chain, %struct.chain* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mp_aframe_config_copy(i32 %9, i32 %14)
  %16 = load %struct.chain*, %struct.chain** %3, align 8
  %17 = getelementptr inbounds %struct.chain, %struct.chain* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.chain*, %struct.chain** %3, align 8
  %20 = getelementptr inbounds %struct.chain, %struct.chain* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.chain*, %struct.chain** %3, align 8
  %22 = getelementptr inbounds %struct.chain, %struct.chain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mp_filter_wakeup(i32 %23)
  ret void
}

declare dso_local i32 @mp_aframe_config_copy(i32, i32) #1

declare dso_local i32 @mp_filter_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
