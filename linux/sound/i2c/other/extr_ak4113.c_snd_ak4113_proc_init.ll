; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4113 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ak4113\00", align 1
@snd_ak4113_proc_regs_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4113*)* @snd_ak4113_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ak4113_proc_init(%struct.ak4113* %0) #0 {
  %2 = alloca %struct.ak4113*, align 8
  store %struct.ak4113* %0, %struct.ak4113** %2, align 8
  %3 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %4 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %7 = load i32, i32* @snd_ak4113_proc_regs_read, align 4
  %8 = call i32 @snd_card_ro_proc_new(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ak4113* %6, i32 %7)
  ret void
}

declare dso_local i32 @snd_card_ro_proc_new(i32, i8*, %struct.ak4113*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
