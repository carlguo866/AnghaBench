; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_res_set_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_res_set_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_res_context = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8**)* @acpi_res_set_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_res_set_init(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.acpi_res_context*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = call %struct.acpi_res_context* @AcpiOsAllocate(i32 8)
  store %struct.acpi_res_context* %8, %struct.acpi_res_context** %7, align 8
  %9 = icmp ne %struct.acpi_res_context* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.acpi_res_context*, %struct.acpi_res_context** %7, align 8
  %12 = call i32 @bzero(%struct.acpi_res_context* %11, i32 8)
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.acpi_res_context*, %struct.acpi_res_context** %7, align 8
  %15 = getelementptr inbounds %struct.acpi_res_context, %struct.acpi_res_context* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.acpi_res_context*, %struct.acpi_res_context** %7, align 8
  %17 = bitcast %struct.acpi_res_context* %16 to i8*
  %18 = load i8**, i8*** %6, align 8
  store i8* %17, i8** %18, align 8
  br label %19

19:                                               ; preds = %10, %3
  ret void
}

declare dso_local %struct.acpi_res_context* @AcpiOsAllocate(i32) #1

declare dso_local i32 @bzero(%struct.acpi_res_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
