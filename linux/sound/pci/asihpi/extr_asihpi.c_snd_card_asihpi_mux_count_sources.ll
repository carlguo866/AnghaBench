; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_mux_count_sources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_mux_count_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.hpi_control = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*)* @snd_card_asihpi_mux_count_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_asihpi_mux_count_sources(%struct.snd_kcontrol* %0) #0 {
  %2 = alloca %struct.snd_kcontrol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpi_control, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %2, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %4, i32 0, i32 0
  %18 = call i32 @hpi_multiplexer_query_source(i32 %14, i32 %15, i32* %16, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %26

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %10

26:                                               ; preds = %21, %10
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @hpi_multiplexer_query_source(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
