; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iomem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"drq\00", align 1
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" flags %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @acpi_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.acpi_device* @device_get_ivars(i32 %8)
  store %struct.acpi_device* %9, %struct.acpi_device** %5, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 0
  store %struct.resource_list* %11, %struct.resource_list** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @bus_print_child_header(i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %20 = load i32, i32* @SYS_RES_IOPORT, align 4
  %21 = call i64 @resource_list_print_type(%struct.resource_list* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %27 = load i32, i32* @SYS_RES_MEMORY, align 4
  %28 = call i64 @resource_list_print_type(%struct.resource_list* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %34 = load i32, i32* @SYS_RES_IRQ, align 4
  %35 = call i64 @resource_list_print_type(%struct.resource_list* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %41 = load i32, i32* @SYS_RES_DRQ, align 4
  %42 = call i64 @resource_list_print_type(%struct.resource_list* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @device_get_flags(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @device_get_flags(i32 %51)
  %53 = call i64 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %2
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @bus_print_child_domain(i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @bus_print_child_footer(i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.acpi_device* @device_get_ivars(i32) #1

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @resource_list_print_type(%struct.resource_list*, i8*, i32, i8*) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i64 @printf(i8*, i32) #1

declare dso_local i64 @bus_print_child_domain(i32, i32) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
