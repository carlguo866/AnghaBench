; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_former_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-former.c_former_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@FORMER_REG_CLOCK_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32*, i32*)* @former_get_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @former_get_clock(%struct.snd_ff* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.snd_ff*, %struct.snd_ff** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %15 = load i32, i32* @FORMER_REG_CLOCK_CONFIG, align 4
  %16 = call i32 @snd_fw_transaction(i32 %13, i32 %14, i32 %15, i32* %8, i32 4, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @parse_clock_bits(i32 %24, i32* %25, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @parse_clock_bits(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
