; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_ak4114_change.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_ak4114_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32, i64 (%struct.snd_ice1712*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4114*, i8, i8)* @juli_ak4114_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @juli_ak4114_change(%struct.ak4114* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ak4114*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i32, align 4
  store %struct.ak4114* %0, %struct.ak4114** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.ak4114*, %struct.ak4114** %4, align 8
  %10 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %9, i32 0, i32 0
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %10, align 8
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %7, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 1
  %14 = load i64 (%struct.snd_ice1712*)*, i64 (%struct.snd_ice1712*)** %13, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %16 = call i64 %14(%struct.snd_ice1712* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.ak4114*, %struct.ak4114** %4, align 8
  %24 = call i32 @snd_ak4114_external_rate(%struct.ak4114* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %26 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @juli_akm_set_rate_val(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %18, %3
  ret void
}

declare dso_local i32 @snd_ak4114_external_rate(%struct.ak4114*) #1

declare dso_local i32 @juli_akm_set_rate_val(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
