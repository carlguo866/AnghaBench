; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_dump_rxbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_dump_rxbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi_descriptor = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"RXBD/%s %08x: nxt %08x buf %08x off.blen %08x opt.plen %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cppi_descriptor*)* @cppi_dump_rxbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi_dump_rxbd(i8* %0, %struct.cppi_descriptor* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cppi_descriptor*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cppi_descriptor* %1, %struct.cppi_descriptor** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %7 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %10 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %13 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %16 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %8, i32 %11, i32 %14, i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
