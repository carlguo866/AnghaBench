; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_usbd_desc.c_USBD_SetVIDPIDRelease.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_usbd_desc.c_USBD_SetVIDPIDRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@USB_LEN_DEV_DESC = common dso_local global i32 0, align 4
@USB_DESC_TYPE_DEVICE = common dso_local global i32 0, align 4
@USB_MAX_EP0_SIZE = common dso_local global i32 0, align 4
@USBD_IDX_MFC_STR = common dso_local global i32 0, align 4
@USBD_IDX_PRODUCT_STR = common dso_local global i32 0, align 4
@USBD_IDX_SERIAL_STR = common dso_local global i32 0, align 4
@USBD_MAX_NUM_CONFIGURATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USBD_SetVIDPIDRelease(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* @USB_LEN_DEV_DESC, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @USB_DESC_TYPE_DEVICE, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 2, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  store i32 0, i32* %34, align 4
  br label %42

35:                                               ; preds = %5
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 239, i32* %37, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  store i32 2, i32* %39, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* @USB_MAX_EP0_SIZE, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @LOBYTE(i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @HIBYTE(i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 9
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @LOBYTE(i32 %54)
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @HIBYTE(i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 11
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @LOBYTE(i32 %62)
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @HIBYTE(i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 13
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @USBD_IDX_MFC_STR, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 14
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @USBD_IDX_PRODUCT_STR, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 15
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @USBD_IDX_SERIAL_STR, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 16
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @USBD_MAX_NUM_CONFIGURATION, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 17
  store i32 %79, i32* %81, align 4
  ret void
}

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @HIBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
