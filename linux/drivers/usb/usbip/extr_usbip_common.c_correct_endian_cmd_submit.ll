; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_correct_endian_cmd_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_correct_endian_cmd_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_header_cmd_submit = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbip_header_cmd_submit*, i32)* @correct_endian_cmd_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correct_endian_cmd_submit(%struct.usbip_header_cmd_submit* %0, i32 %1) #0 {
  %3 = alloca %struct.usbip_header_cmd_submit*, align 8
  %4 = alloca i32, align 4
  store %struct.usbip_header_cmd_submit* %0, %struct.usbip_header_cmd_submit** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %9 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cpu_to_be32(i32 %10)
  %12 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %13 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %15 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %14, i32 0, i32 3
  %16 = call i32 @cpu_to_be32s(i32* %15)
  %17 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %18 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %17, i32 0, i32 2
  %19 = call i32 @cpu_to_be32s(i32* %18)
  %20 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %21 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %20, i32 0, i32 1
  %22 = call i32 @cpu_to_be32s(i32* %21)
  %23 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %24 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %23, i32 0, i32 0
  %25 = call i32 @cpu_to_be32s(i32* %24)
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %28 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %32 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %34 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %33, i32 0, i32 3
  %35 = call i32 @be32_to_cpus(i32* %34)
  %36 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %37 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %36, i32 0, i32 2
  %38 = call i32 @be32_to_cpus(i32* %37)
  %39 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %40 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %39, i32 0, i32 1
  %41 = call i32 @be32_to_cpus(i32* %40)
  %42 = load %struct.usbip_header_cmd_submit*, %struct.usbip_header_cmd_submit** %3, align 8
  %43 = getelementptr inbounds %struct.usbip_header_cmd_submit, %struct.usbip_header_cmd_submit* %42, i32 0, i32 0
  %44 = call i32 @be32_to_cpus(i32* %43)
  br label %45

45:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be32s(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
