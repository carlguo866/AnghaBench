; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_resources = type { i64, i32, i32, %struct.fw_unit* }
%struct.fw_unit = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_resources_init(%struct.fw_iso_resources* %0, %struct.fw_unit* %1) #0 {
  %3 = alloca %struct.fw_iso_resources*, align 8
  %4 = alloca %struct.fw_unit*, align 8
  store %struct.fw_iso_resources* %0, %struct.fw_iso_resources** %3, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %4, align 8
  %5 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %6 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %5, i32 0, i32 0
  store i64 -1, i64* %6, align 8
  %7 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %8 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %9 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %8, i32 0, i32 3
  store %struct.fw_unit* %7, %struct.fw_unit** %9, align 8
  %10 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %11 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %10, i32 0, i32 2
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %14 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  ret i32 0
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
