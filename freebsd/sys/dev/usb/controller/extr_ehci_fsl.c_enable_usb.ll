; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_fsl.c_enable_usb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_fsl.c_enable_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONTROL = common dso_local global i32 0, align 4
@USB_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"phy_type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@UTMI_PHY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @enable_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_usb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CONTROL, align 4
  %13 = call i32 @bus_space_read_4(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @USB_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @ofw_bus_get_node(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @OF_getprop_alloc(i64 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i64 @strncasecmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @UTMI_PHY_EN, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @OF_prop_free(i8* %34)
  br label %36

36:                                               ; preds = %33, %20, %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CONTROL, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @bus_space_write_4(i32 %37, i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
