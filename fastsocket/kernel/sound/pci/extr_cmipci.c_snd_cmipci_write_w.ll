; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_write_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_write_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmipci*, i32, i16)* @snd_cmipci_write_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cmipci_write_w(%struct.cmipci* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.cmipci* %0, %struct.cmipci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load i16, i16* %6, align 2
  %8 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %9 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = call i32 @outw(i16 zeroext %7, i64 %13)
  ret void
}

declare dso_local i32 @outw(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
