; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_socket_sysfs.c_pccard_show_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_socket_sysfs.c_pccard_show_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcmcia_socket = type { i32 }

@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"32-bit\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"16-bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pccard_show_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_show_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pcmcia_socket*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.pcmcia_socket* @to_socket(%struct.device* %9)
  store %struct.pcmcia_socket* %10, %struct.pcmcia_socket** %8, align 8
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SOCKET_PRESENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SOCKET_CARDBUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.pcmcia_socket* @to_socket(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
