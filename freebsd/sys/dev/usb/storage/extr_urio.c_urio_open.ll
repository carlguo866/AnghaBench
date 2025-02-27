; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.urio_softc = type { i32*, i32, i32 }

@FREAD = common dso_local global i32 0, align 4
@URIO_FLAG_READ_STALL = common dso_local global i32 0, align 4
@URIO_T_RD = common dso_local global i64 0, align 8
@URIO_IFQ_MAXLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@URIO_FLAG_WRITE_STALL = common dso_local global i32 0, align 4
@URIO_T_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @urio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urio_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urio_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %8 = call %struct.urio_softc* @usb_fifo_softc(%struct.usb_fifo* %7)
  store %struct.urio_softc* %8, %struct.urio_softc** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @FREAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.urio_softc*, %struct.urio_softc** %6, align 8
  %15 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %14, i32 0, i32 2
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i32, i32* @URIO_FLAG_READ_STALL, align 4
  %18 = load %struct.urio_softc*, %struct.urio_softc** %6, align 8
  %19 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.urio_softc*, %struct.urio_softc** %6, align 8
  %23 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %22, i32 0, i32 2
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %26 = load %struct.urio_softc*, %struct.urio_softc** %6, align 8
  %27 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @URIO_T_RD, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usbd_xfer_max_len(i32 %31)
  %33 = load i32, i32* @URIO_IFQ_MAXLEN, align 4
  %34 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %25, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %13
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @FWRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load i32, i32* @URIO_FLAG_WRITE_STALL, align 4
  %46 = load %struct.urio_softc*, %struct.urio_softc** %6, align 8
  %47 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %51 = load %struct.urio_softc*, %struct.urio_softc** %6, align 8
  %52 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @URIO_T_WR, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usbd_xfer_max_len(i32 %56)
  %58 = load i32, i32* @URIO_IFQ_MAXLEN, align 4
  %59 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %50, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %39
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61, %36
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.urio_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
