; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_ctlr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_set_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_info = type { i32 }

@CTLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_info*, i8, i8)* @waveartist_set_ctlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waveartist_set_ctlr(%struct.address_info* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.address_info*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.address_info* %0, %struct.address_info** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.address_info*, %struct.address_info** %4, align 8
  %9 = getelementptr inbounds %struct.address_info, %struct.address_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CTLR, align 4
  %12 = add i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %7, align 4
  %17 = call zeroext i8 @inb(i32 %16)
  %18 = zext i8 %17 to i32
  %19 = and i32 %15, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %5, align 1
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @outb(i8 zeroext %26, i32 %27)
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
