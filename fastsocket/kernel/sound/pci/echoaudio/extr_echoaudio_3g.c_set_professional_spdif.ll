; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_professional_spdif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_professional_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i8, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i8)* @set_professional_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_professional_spdif(%struct.echoaudio* %0, i8 signext %1) #0 {
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %7 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i8, i8* %4, align 1
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 0
  store i8 %12, i8* %14, align 8
  %15 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %18 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_spdif_bits(%struct.echoaudio* %15, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %24 = call i32 @get_frq_reg(%struct.echoaudio* %23)
  %25 = call i32 @write_control_reg(%struct.echoaudio* %21, i32 %22, i32 %24, i32 0)
  ret i32 %25
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_spdif_bits(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32, i32) #1

declare dso_local i32 @get_frq_reg(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
