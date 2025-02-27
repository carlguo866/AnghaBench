; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_cvol_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_cvol_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64 }
%struct.snd_trident_voice = type { i32, i32, i32, i32 }

@T4D_LFO_GC_CIR = common dso_local global i32 0, align 4
@TRIDENT_DEVICE_ID_NX = common dso_local global i64 0, align 8
@CH_NX_ALPHA_FMS_FMC_RVOL_CVOL = common dso_local global i32 0, align 4
@CH_DX_FMC_RVOL_CVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_trident*, %struct.snd_trident_voice*, i32)* @snd_trident_write_cvol_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_trident_write_cvol_reg(%struct.snd_trident* %0, %struct.snd_trident_voice* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store %struct.snd_trident_voice* %1, %struct.snd_trident_voice** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %9 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %11 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %14 = load i32, i32* @T4D_LFO_GC_CIR, align 4
  %15 = call i32 @TRID_REG(%struct.snd_trident* %13, i32 %14)
  %16 = call i32 @outb(i32 %12, i32 %15)
  %17 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %18 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = shl i32 %20, 14
  %22 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %23 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 127
  %26 = shl i32 %25, 7
  %27 = or i32 %21, %26
  %28 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %29 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 127
  %32 = or i32 %27, %31
  %33 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %34 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %35 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TRIDENT_DEVICE_ID_NX, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @CH_NX_ALPHA_FMS_FMC_RVOL_CVOL, align 4
  br label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @CH_DX_FMC_RVOL_CVOL, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @TRID_REG(%struct.snd_trident* %33, i32 %44)
  %46 = call i32 @outw(i32 %32, i32 %45)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
