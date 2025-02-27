; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@uv_hub_info = common dso_local global %struct.TYPE_2__* null, align 8
@UV_NON_UNIQUE_APIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_cpu_init() #0 {
  %1 = call i64 (...) @smp_processor_id()
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uv_hub_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = call i64 (...) @get_uv_system_type()
  %10 = load i64, i64* @UV_NON_UNIQUE_APIC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uv_hub_info, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @set_x2apic_extra_bits(i32 %15)
  br label %17

17:                                               ; preds = %3, %12, %4
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @get_uv_system_type(...) #1

declare dso_local i32 @set_x2apic_extra_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
