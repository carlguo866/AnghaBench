; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_open_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_open_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.disk_devdesc = type { i32 }

@umass_uaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk_devdesc*)* @umass_disk_open_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_disk_open_sub(%struct.disk_devdesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk_devdesc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @umass_uaa, i32 0, i32 0), align 4
  %7 = call i64 @usb_msc_read_capacity(i32 %6, i32 0, i64* %4, i64* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %14, 1
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i32
  %18 = mul nsw i32 %15, %17
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @disk_open(%struct.disk_devdesc* %12, i32 %18, i64 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %11, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @usb_msc_read_capacity(i32, i32, i64*, i64*) #1

declare dso_local i32 @disk_open(%struct.disk_devdesc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
