; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm8776_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm8776_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@wm8776_init.wm8776_inits = internal global [10 x i16] [i16 132, i16 3, i16 130, i16 1, i16 131, i16 0, i16 129, i16 8, i16 128, i16 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @wm8776_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ARRAY_SIZE(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @wm8776_init.wm8776_inits, i64 0, i64 0))
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [10 x i16], [10 x i16]* @wm8776_init.wm8776_inits, i64 0, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i16], [10 x i16]* @wm8776_init.wm8776_inits, i64 0, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = call i32 @wm_put(%struct.snd_ice1712* %9, i16 zeroext %13, i16 zeroext %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 2
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i16*) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
