; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_updateSound.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_updateSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snd_all_samples = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i64 0, align 8
@snd_cbuff = common dso_local global i64 0, align 8
@snd_cbuf_samples = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @updateSound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateSound(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 2
  %5 = load i32, i32* @snd_all_samples, align 4
  %6 = add nsw i32 %5, %4
  store i32 %6, i32* @snd_all_samples, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* @PsndOut, align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* @PsndOut, align 8
  %12 = load i64, i64* @PsndOut, align 8
  %13 = load i64, i64* @snd_cbuff, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i64, i64* @snd_cbuf_samples, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* @snd_cbuff, align 8
  store i64 %18, i64* @PsndOut, align 8
  br label %19

19:                                               ; preds = %17, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
