; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_driver_loaded.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_driver_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@usb_dev_configured = common dso_local global i32 0, align 4
@uhso_test_autoinst = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@uhso_etag = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@uhso_ifnet_unit = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i32, i8*)* @uhso_driver_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_driver_loaded(%struct.module* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %22 [
    i32 129, label %9
    i32 128, label %16
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @usb_dev_configured, align 4
  %11 = load i32, i32* @uhso_test_autoinst, align 4
  %12 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %13 = call i32 @EVENTHANDLER_REGISTER(i32 %10, i32 %11, i32* null, i32 %12)
  store i32 %13, i32* @uhso_etag, align 4
  %14 = load i32, i32* @INT_MAX, align 4
  %15 = call i32 @new_unrhdr(i32 0, i32 %14, i32* null)
  store i32 %15, i32* @uhso_ifnet_unit, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load i32, i32* @usb_dev_configured, align 4
  %18 = load i32, i32* @uhso_etag, align 4
  %19 = call i32 @EVENTHANDLER_DEREGISTER(i32 %17, i32 %18)
  %20 = load i32, i32* @uhso_ifnet_unit, align 4
  %21 = call i32 @delete_unrhdr(i32 %20)
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %16, %9
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @new_unrhdr(i32, i32, i32*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @delete_unrhdr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
