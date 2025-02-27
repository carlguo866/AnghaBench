; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_reset_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_reset_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i64 }

@RME96_WCR_PD = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*)* @snd_rme96_reset_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_reset_dac(%struct.rme96* %0) #0 {
  %2 = alloca %struct.rme96*, align 8
  store %struct.rme96* %0, %struct.rme96** %2, align 8
  %3 = load %struct.rme96*, %struct.rme96** %2, align 8
  %4 = getelementptr inbounds %struct.rme96, %struct.rme96* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RME96_WCR_PD, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.rme96*, %struct.rme96** %2, align 8
  %9 = getelementptr inbounds %struct.rme96, %struct.rme96* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.rme96*, %struct.rme96** %2, align 8
  %15 = getelementptr inbounds %struct.rme96, %struct.rme96* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rme96*, %struct.rme96** %2, align 8
  %18 = getelementptr inbounds %struct.rme96, %struct.rme96* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
