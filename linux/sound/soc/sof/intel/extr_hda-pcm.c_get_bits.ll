; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_get_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_get_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"can't find %d bits using 16bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, i32)* @get_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bits(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 8, label %7
    i32 16, label %9
    i32 20, label %11
    i32 24, label %13
    i32 32, label %15
  ]

7:                                                ; preds = %2
  %8 = call i32 @SDnFMT_BITS(i32 0)
  store i32 %8, i32* %3, align 4
  br label %24

9:                                                ; preds = %2
  %10 = call i32 @SDnFMT_BITS(i32 1)
  store i32 %10, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = call i32 @SDnFMT_BITS(i32 2)
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = call i32 @SDnFMT_BITS(i32 3)
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = call i32 @SDnFMT_BITS(i32 4)
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %19 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @SDnFMT_BITS(i32 1)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %15, %13, %11, %9, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @SDnFMT_BITS(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
