; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_snd_pmac_awacs_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_snd_pmac_awacs_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32, i32)* @snd_pmac_awacs_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_awacs_write_reg(%struct.snd_pmac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 %9, 12
  %11 = or i32 %8, %10
  %12 = call i32 @snd_pmac_awacs_write(%struct.snd_pmac* %7, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.snd_pmac*, %struct.snd_pmac** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  ret void
}

declare dso_local i32 @snd_pmac_awacs_write(%struct.snd_pmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
