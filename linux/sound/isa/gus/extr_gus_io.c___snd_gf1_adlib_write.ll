; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c___snd_gf1_adlib_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c___snd_gf1_adlib_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*, i8, i8)* @__snd_gf1_adlib_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__snd_gf1_adlib_write(%struct.snd_gus_card* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %5, align 1
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @outb(i8 zeroext %7, i32 %11)
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %14 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @inb(i32 %16)
  %18 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %19 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @inb(i32 %21)
  %23 = load i8, i8* %6, align 1
  %24 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %25 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @outb(i8 zeroext %23, i32 %27)
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %30 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @inb(i32 %32)
  %34 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %35 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @inb(i32 %37)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
