; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_board* }
%struct.pcmuio_board = type { i32 }

@PCMUIO_PAGE_POL = common dso_local global i32 0, align 4
@PCMUIO_PAGE_ENAB = common dso_local global i32 0, align 4
@PCMUIO_PAGE_INT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pcmuio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmuio_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcmuio_board*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load %struct.pcmuio_board*, %struct.pcmuio_board** %6, align 8
  store %struct.pcmuio_board* %7, %struct.pcmuio_board** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.pcmuio_board*, %struct.pcmuio_board** %3, align 8
  %11 = getelementptr inbounds %struct.pcmuio_board, %struct.pcmuio_board* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pcmuio_write(%struct.comedi_device* %15, i32 0, i32 %16, i32 0, i32 0)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pcmuio_write(%struct.comedi_device* %18, i32 0, i32 %19, i32 0, i32 3)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PCMUIO_PAGE_POL, align 4
  %24 = call i32 @pcmuio_write(%struct.comedi_device* %21, i32 0, i32 %22, i32 %23, i32 0)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PCMUIO_PAGE_ENAB, align 4
  %28 = call i32 @pcmuio_write(%struct.comedi_device* %25, i32 0, i32 %26, i32 %27, i32 0)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PCMUIO_PAGE_INT_ID, align 4
  %32 = call i32 @pcmuio_write(%struct.comedi_device* %29, i32 0, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %14
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pcmuio_write(%struct.comedi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
