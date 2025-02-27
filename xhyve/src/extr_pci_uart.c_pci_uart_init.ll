; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_uart.c_pci_uart_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_uart.c_pci_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32, i32, %struct.uart_softc* }
%struct.uart_softc = type { i32 }

@PCIBAR_IO = common dso_local global i32 0, align 4
@UART_IO_BAR_SIZE = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@COM_DEV = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@COM_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_SIMPLECOMM = common dso_local global i32 0, align 4
@pci_uart_intr_assert = common dso_local global i32 0, align 4
@pci_uart_intr_deassert = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pci uart at %d:%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to initialize backend '%s' for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinst*, i8*)* @pci_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_uart_init(%struct.pci_devinst* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_softc*, align 8
  %7 = alloca i8*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %9 = load i32, i32* @PCIBAR_IO, align 4
  %10 = load i32, i32* @UART_IO_BAR_SIZE, align 4
  %11 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %8, i32 0, i32 %9, i32 %10)
  %12 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %13 = call i32 @pci_lintr_request(%struct.pci_devinst* %12)
  %14 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %15 = load i32, i32* @PCIR_DEVICE, align 4
  %16 = load i32, i32* @COM_DEV, align 4
  %17 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %14, i32 %15, i32 %16)
  %18 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %19 = load i32, i32* @PCIR_VENDOR, align 4
  %20 = load i32, i32* @COM_VENDOR, align 4
  %21 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %18, i32 %19, i32 %20)
  %22 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %23 = load i32, i32* @PCIR_CLASS, align 4
  %24 = load i32, i32* @PCIC_SIMPLECOMM, align 4
  %25 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @pci_uart_intr_assert, align 4
  %27 = load i32, i32* @pci_uart_intr_deassert, align 4
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %29 = call %struct.uart_softc* @uart_init(i32 %26, i32 %27, %struct.pci_devinst* %28)
  store %struct.uart_softc* %29, %struct.uart_softc** %6, align 8
  %30 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %31 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %32 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %31, i32 0, i32 2
  store %struct.uart_softc* %30, %struct.uart_softc** %32, align 8
  %33 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %34 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %37 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @uart_set_backend(%struct.uart_softc* %40, i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %2
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  store i32 -1, i32* %3, align 4
  br label %55

52:                                               ; preds = %2
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @free(i8* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @pci_lintr_request(%struct.pci_devinst*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local %struct.uart_softc* @uart_init(i32, i32, %struct.pci_devinst*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i64 @uart_set_backend(%struct.uart_softc*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
