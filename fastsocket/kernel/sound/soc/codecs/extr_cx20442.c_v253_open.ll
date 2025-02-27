; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cx20442.c_v253_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cx20442.c_v253_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }
%struct.tty_struct = type { %struct.snd_soc_codec*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32, i32)* }

@cx20442_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@v253_init = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @v253_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v253_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @cx20442_codec, align 8
  store %struct.snd_soc_codec* %7, %struct.snd_soc_codec** %4, align 8
  %8 = load i32, i32* @v253_init, align 4
  %9 = call i32 @strlen(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.tty_struct*, i32, i32)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 0
  store %struct.snd_soc_codec* %20, %struct.snd_soc_codec** %22, align 8
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %26, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = load i32, i32* @v253_init, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %27(%struct.tty_struct* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %34
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  store %struct.snd_soc_codec* null, %struct.snd_soc_codec** %40, align 8
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %37, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
