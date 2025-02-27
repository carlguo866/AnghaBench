; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_mailbox.c_omap1_mbox_fifo_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_mailbox.c_omap1_mbox_fifo_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i64 }
%struct.omap_mbox1_fifo = type { i32 }
%struct.omap_mbox1_priv = type { %struct.omap_mbox1_fifo }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mbox*)* @omap1_mbox_fifo_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap1_mbox_fifo_full(%struct.omap_mbox* %0) #0 {
  %2 = alloca %struct.omap_mbox*, align 8
  %3 = alloca %struct.omap_mbox1_fifo*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %2, align 8
  %4 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  %5 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.omap_mbox1_priv*
  %8 = getelementptr inbounds %struct.omap_mbox1_priv, %struct.omap_mbox1_priv* %7, i32 0, i32 0
  store %struct.omap_mbox1_fifo* %8, %struct.omap_mbox1_fifo** %3, align 8
  %9 = load %struct.omap_mbox1_fifo*, %struct.omap_mbox1_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.omap_mbox1_fifo, %struct.omap_mbox1_fifo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mbox_read_reg(i32 %11)
  ret i32 %12
}

declare dso_local i32 @mbox_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
