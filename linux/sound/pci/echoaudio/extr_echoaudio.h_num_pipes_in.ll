; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.h_num_pipes_in.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.h_num_pipes_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @num_pipes_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_pipes_in(%struct.echoaudio* %0) #0 {
  %2 = alloca %struct.echoaudio*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %2, align 8
  %3 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %4 = call i32 @px_num(%struct.echoaudio* %3)
  %5 = load %struct.echoaudio*, %struct.echoaudio** %2, align 8
  %6 = call i32 @px_analog_in(%struct.echoaudio* %5)
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

declare dso_local i32 @px_num(%struct.echoaudio*) #1

declare dso_local i32 @px_analog_in(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
