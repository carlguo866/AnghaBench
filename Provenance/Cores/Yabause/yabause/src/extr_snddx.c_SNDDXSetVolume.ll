; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_snddx.c_SNDDXSetVolume.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_snddx.c_SNDDXSetVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSBVOLUME_MIN = common dso_local global i64 0, align 8
@soundvolume = common dso_local global i64 0, align 8
@issoundmuted = common dso_local global i32 0, align 4
@lpDSB2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SNDDXSetVolume(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i64, i64* @DSBVOLUME_MIN, align 8
  store i64 %6, i64* @soundvolume, align 8
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 1.000000e+02
  %11 = call double @log10(double %10) #3
  %12 = fmul double %11, 2.000000e+03
  %13 = fptosi double %12 to i64
  store i64 %13, i64* @soundvolume, align 8
  br label %14

14:                                               ; preds = %7, %5
  %15 = load i32, i32* @issoundmuted, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @lpDSB2, align 4
  %19 = load i64, i64* @soundvolume, align 8
  %20 = call i32 @IDirectSoundBuffer8_SetVolume(i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log10(double) #1

declare dso_local i32 @IDirectSoundBuffer8_SetVolume(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
