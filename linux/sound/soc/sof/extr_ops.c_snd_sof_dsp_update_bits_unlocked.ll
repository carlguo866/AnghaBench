; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.c_snd_sof_dsp_update_bits_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.c_snd_sof_dsp_update_bits_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_sof_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %38

32:                                               ; preds = %5
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @snd_sof_dsp_write(%struct.snd_sof_dev* %33, i32 %34, i32 %35, i32 %36)
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %31
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_write(%struct.snd_sof_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
