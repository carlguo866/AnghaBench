; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_i_read32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_i_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.hal2_ctl_regs* }
%struct.hal2_ctl_regs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hal2*, i32)* @hal2_i_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_i_read32(%struct.snd_hal2* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_hal2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hal2_ctl_regs*, align 8
  store %struct.snd_hal2* %0, %struct.snd_hal2** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_hal2*, %struct.snd_hal2** %3, align 8
  %8 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %7, i32 0, i32 0
  %9 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %8, align 8
  store %struct.hal2_ctl_regs* %9, %struct.hal2_ctl_regs** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @H2_READ_ADDR(i32 %10)
  %12 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %6, align 8
  %13 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %12, i32 0, i32 1
  %14 = call i32 @hal2_write(i32 %11, i32* %13)
  %15 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %6, align 8
  %16 = call i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs* %15)
  %17 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %6, align 8
  %18 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %17, i32 0, i32 0
  %19 = call i32 @hal2_read(i32* %18)
  %20 = and i32 %19, 65535
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @H2_READ_ADDR(i32 %21)
  %23 = or i32 %22, 1
  %24 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %6, align 8
  %25 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %24, i32 0, i32 1
  %26 = call i32 @hal2_write(i32 %23, i32* %25)
  %27 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %6, align 8
  %28 = call i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs* %27)
  %29 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %6, align 8
  %30 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %29, i32 0, i32 0
  %31 = call i32 @hal2_read(i32* %30)
  %32 = and i32 %31, 65535
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @hal2_write(i32, i32*) #1

declare dso_local i32 @H2_READ_ADDR(i32) #1

declare dso_local i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs*) #1

declare dso_local i32 @hal2_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
