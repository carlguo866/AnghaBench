; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_ao_chain_reset_state.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_ao_chain_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao_chain = type { i32, i32, i32, i32, i32 }

@MP_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao_chain*)* @ao_chain_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ao_chain_reset_state(%struct.ao_chain* %0) #0 {
  %2 = alloca %struct.ao_chain*, align 8
  store %struct.ao_chain* %0, %struct.ao_chain** %2, align 8
  %3 = load i32, i32* @MP_NOPTS_VALUE, align 4
  %4 = load %struct.ao_chain*, %struct.ao_chain** %2, align 8
  %5 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load %struct.ao_chain*, %struct.ao_chain** %2, align 8
  %7 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %6, i32 0, i32 3
  %8 = call i32 @TA_FREEP(i32* %7)
  %9 = load %struct.ao_chain*, %struct.ao_chain** %2, align 8
  %10 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.ao_chain*, %struct.ao_chain** %2, align 8
  %12 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.ao_chain*, %struct.ao_chain** %2, align 8
  %14 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mp_audio_buffer_clear(i32 %15)
  ret void
}

declare dso_local i32 @TA_FREEP(i32*) #1

declare dso_local i32 @mp_audio_buffer_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
