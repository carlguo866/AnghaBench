; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_delete_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_delete_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexus_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @nexus_delete_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nexus_delete_resource(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nexus_device*, align 8
  %10 = alloca %struct.resource_list*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.nexus_device* @DEVTONX(i32 %11)
  store %struct.nexus_device* %12, %struct.nexus_device** %9, align 8
  %13 = load %struct.nexus_device*, %struct.nexus_device** %9, align 8
  %14 = getelementptr inbounds %struct.nexus_device, %struct.nexus_device* %13, i32 0, i32 0
  store %struct.resource_list* %14, %struct.resource_list** %10, align 8
  %15 = load %struct.resource_list*, %struct.resource_list** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @resource_list_delete(%struct.resource_list* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local %struct.nexus_device* @DEVTONX(i32) #1

declare dso_local i32 @resource_list_delete(%struct.resource_list*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
