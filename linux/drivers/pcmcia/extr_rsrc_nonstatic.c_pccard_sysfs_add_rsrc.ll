; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_pccard_sysfs_add_rsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_pccard_sysfs_add_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.class_interface = type { i32 }
%struct.pcmcia_socket = type { i32* }

@pccard_nonstatic_ops = common dso_local global i32 0, align 4
@rsrc_attributes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.class_interface*)* @pccard_sysfs_add_rsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_sysfs_add_rsrc(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.class_interface*, align 8
  %6 = alloca %struct.pcmcia_socket*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.class_interface* %1, %struct.class_interface** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.pcmcia_socket* @dev_get_drvdata(%struct.device* %7)
  store %struct.pcmcia_socket* %8, %struct.pcmcia_socket** %6, align 8
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, @pccard_nonstatic_ops
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = call i32 @sysfs_create_group(i32* %16, i32* @rsrc_attributes)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.pcmcia_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
