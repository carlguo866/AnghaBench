; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_enable_address_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_enable_address_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }

@ALI_GC_CIR = common dso_local global i32 0, align 4
@ENDLP_IE = common dso_local global i32 0, align 4
@MIDLP_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*)* @snd_ali_enable_address_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_enable_address_interrupt(%struct.snd_ali* %0) #0 {
  %2 = alloca %struct.snd_ali*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %2, align 8
  %4 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %5 = load i32, i32* @ALI_GC_CIR, align 4
  %6 = call i32 @ALI_REG(%struct.snd_ali* %4, i32 %5)
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @ENDLP_IE, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MIDLP_IE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %16 = load i32, i32* @ALI_GC_CIR, align 4
  %17 = call i32 @ALI_REG(%struct.snd_ali* %15, i32 %16)
  %18 = call i32 @outl(i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
