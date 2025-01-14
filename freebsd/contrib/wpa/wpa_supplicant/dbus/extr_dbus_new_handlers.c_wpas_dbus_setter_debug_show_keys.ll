; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_debug_show_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_debug_show_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_global = type { i32 }

@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@wpa_debug_level = common dso_local global i32 0, align 4
@wpa_debug_timestamp = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wpas_dbus_setter_debug_show_keys(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_global*, align 8
  %11 = alloca i64, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.wpa_global*
  store %struct.wpa_global* %13, %struct.wpa_global** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %17 = call i32 @wpas_dbus_simple_property_setter(i32* %14, i32* %15, i32 %16, i64* %11)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %5, align 8
  br label %31

21:                                               ; preds = %4
  %22 = load %struct.wpa_global*, %struct.wpa_global** %10, align 8
  %23 = load i32, i32* @wpa_debug_level, align 4
  %24 = load i32, i32* @wpa_debug_timestamp, align 4
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = call i32 @wpa_supplicant_set_debug_params(%struct.wpa_global* %22, i32 %23, i32 %24, i32 %28)
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local i32 @wpas_dbus_simple_property_setter(i32*, i32*, i32, i64*) #1

declare dso_local i32 @wpa_supplicant_set_debug_params(%struct.wpa_global*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
