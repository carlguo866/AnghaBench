; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_error.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, i32, i32 }

@APIC_OFFSET_ERROR_LVT = common dso_local global i32 0, align 4
@APIC_LVT_DM_FIXED = common dso_local global i32 0, align 4
@VLAPIC_INTR_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_set_error(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vlapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %8 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %12 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %18 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %20 = load i32, i32* @APIC_OFFSET_ERROR_LVT, align 4
  %21 = call i32 @vlapic_get_lvt(%struct.vlapic* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @APIC_LVT_DM_FIXED, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @vlapic_fire_lvt(%struct.vlapic* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %30 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %33 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VLAPIC_INTR_ERROR, align 4
  %36 = call i32 @vmm_stat_incr(i32 %31, i32 %34, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %28, %16
  %38 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %39 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32 @vlapic_get_lvt(%struct.vlapic*, i32) #1

declare dso_local i64 @vlapic_fire_lvt(%struct.vlapic*, i32) #1

declare dso_local i32 @vmm_stat_incr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
