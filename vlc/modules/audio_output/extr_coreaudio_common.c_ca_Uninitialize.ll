; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_Uninitialize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_coreaudio_common.c_ca_Uninitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.aout_sys_common = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ca_Uninitialize(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.aout_sys_common*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.aout_sys_common*
  store %struct.aout_sys_common* %7, %struct.aout_sys_common** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = call i32 @ca_ClearOutBuffers(%struct.TYPE_4__* %8)
  %10 = load %struct.aout_sys_common*, %struct.aout_sys_common** %3, align 8
  %11 = getelementptr inbounds %struct.aout_sys_common, %struct.aout_sys_common* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  ret void
}

declare dso_local i32 @ca_ClearOutBuffers(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
