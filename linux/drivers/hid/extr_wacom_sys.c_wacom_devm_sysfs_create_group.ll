; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_devm_sysfs_create_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_devm_sysfs_create_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.attribute_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, %struct.attribute_group*)* @wacom_devm_sysfs_create_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_devm_sysfs_create_group(%struct.wacom* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.attribute_group*, align 8
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %4, align 8
  %5 = load %struct.wacom*, %struct.wacom** %3, align 8
  %6 = load %struct.wacom*, %struct.wacom** %3, align 8
  %7 = getelementptr inbounds %struct.wacom, %struct.wacom* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %12 = call i32 @__wacom_devm_sysfs_create_group(%struct.wacom* %5, i32* %10, %struct.attribute_group* %11)
  ret i32 %12
}

declare dso_local i32 @__wacom_devm_sysfs_create_group(%struct.wacom*, i32*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
