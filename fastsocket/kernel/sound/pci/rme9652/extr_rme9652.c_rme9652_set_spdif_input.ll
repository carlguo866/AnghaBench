; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_rme9652_set_spdif_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_rme9652_set_spdif_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32 }

@RME9652_inp = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*, i32)* @rme9652_set_spdif_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_set_spdif_input(%struct.snd_rme9652* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @RME9652_inp, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @rme9652_encode_spdif_in(i32 %12)
  %14 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %15 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %19 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %24 = call i32 @rme9652_stop(%struct.snd_rme9652* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %27 = load i32, i32* @RME9652_control_register, align 4
  %28 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %29 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rme9652_write(%struct.snd_rme9652* %26, i32 %27, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %36 = call i32 @rme9652_start(%struct.snd_rme9652* %35)
  br label %37

37:                                               ; preds = %34, %25
  ret i32 0
}

declare dso_local i32 @rme9652_encode_spdif_in(i32) #1

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @rme9652_start(%struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
