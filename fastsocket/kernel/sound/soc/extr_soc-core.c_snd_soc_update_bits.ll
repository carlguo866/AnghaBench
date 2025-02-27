; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_update_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@io_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec* %0, i16 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 @mutex_lock(i32* @io_mutex)
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %14 = load i16, i16* %6, align 2
  %15 = call i32 @snd_soc_read(%struct.snd_soc_codec* %13, i16 zeroext %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %30 = load i16, i16* %6, align 2
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @snd_soc_write(%struct.snd_soc_codec* %29, i16 zeroext %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %4
  %34 = call i32 @mutex_unlock(i32* @io_mutex)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i16 zeroext) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i16 zeroext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
