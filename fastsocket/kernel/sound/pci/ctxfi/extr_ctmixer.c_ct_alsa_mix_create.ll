; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_alsa_mix_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_ct_alsa_mix_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ct_mixer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_alsa_mix_create(%struct.ct_atc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %10 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ct_mixer*
  %13 = call i32 @ct_mixer_kcontrols_create(%struct.ct_mixer* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %26

18:                                               ; preds = %3
  %19 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %20 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strcpy(i32 %23, i8* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @ct_mixer_kcontrols_create(%struct.ct_mixer*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
