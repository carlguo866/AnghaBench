; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_udmabuf_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_udmabuf_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @udmabuf_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @udmabuf_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %3
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @udmabuf_ioctl_create(%struct.file* %10, i64 %11)
  store i64 %12, i64* %7, align 8
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @udmabuf_ioctl_create_list(%struct.file* %14, i64 %15)
  store i64 %16, i64* %7, align 8
  br label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @ENOTTY, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = load i64, i64* %7, align 8
  ret i64 %21
}

declare dso_local i64 @udmabuf_ioctl_create(%struct.file*, i64) #1

declare dso_local i64 @udmabuf_ioctl_create_list(%struct.file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
