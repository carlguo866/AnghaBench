; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa.c_isa_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa.c_isa_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.isa_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isa_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.isa_device*, align 8
  %12 = alloca %struct.resource_list*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resource* %4, %struct.resource** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.isa_device* @DEVTOISA(i32 %13)
  store %struct.isa_device* %14, %struct.isa_device** %11, align 8
  %15 = load %struct.isa_device*, %struct.isa_device** %11, align 8
  %16 = getelementptr inbounds %struct.isa_device, %struct.isa_device* %15, i32 0, i32 0
  store %struct.resource_list* %16, %struct.resource_list** %12, align 8
  %17 = load %struct.resource_list*, %struct.resource_list** %12, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.resource*, %struct.resource** %10, align 8
  %23 = call i32 @resource_list_release(%struct.resource_list* %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.resource* %22)
  ret i32 %23
}

declare dso_local %struct.isa_device* @DEVTOISA(i32) #1

declare dso_local i32 @resource_list_release(%struct.resource_list*, i32, i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
