; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_lapic.c_lapic_set_local_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_lapic.c_lapic_set_local_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vlapic = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapic_set_local_intr(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.vm*, %struct.vm** %5, align 8
  %16 = call i32 @vm_get_maxcpus(%struct.vm* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.vm*, %struct.vm** %5, align 8
  %25 = call i32 @vm_active_cpus(%struct.vm* %24)
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @CPU_SETOF(i32 %27, i32* %9)
  br label %29

29:                                               ; preds = %26, %23
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = call i32 @CPU_FFS(i32* %9)
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @CPU_CLR(i32 %36, i32* %9)
  %38 = load %struct.vm*, %struct.vm** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.vlapic* @vm_lapic(%struct.vm* %38, i32 %39)
  store %struct.vlapic* %40, %struct.vlapic** %8, align 8
  %41 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @vlapic_trigger_lvt(%struct.vlapic* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %48

47:                                               ; preds = %33
  br label %30

48:                                               ; preds = %46, %30
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @vm_get_maxcpus(%struct.vm*) #1

declare dso_local i32 @vm_active_cpus(%struct.vm*) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local i32 @vlapic_trigger_lvt(%struct.vlapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
