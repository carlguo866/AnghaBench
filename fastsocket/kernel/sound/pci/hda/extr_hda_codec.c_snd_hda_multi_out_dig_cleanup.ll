; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_dig_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_dig_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_multi_out = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_multi_out_dig_cleanup(%struct.hda_codec* %0, %struct.hda_multi_out* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_multi_out*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_multi_out* %1, %struct.hda_multi_out** %4, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %10 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cleanup_dig_out_stream(%struct.hda_codec* %8, i32 %11)
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cleanup_dig_out_stream(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
