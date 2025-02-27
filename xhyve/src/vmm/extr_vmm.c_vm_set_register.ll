; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_set_register.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.vcpu*, i32 }
%struct.vcpu = type { i32 }

@VM_MAXCPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_REG_LAST = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Setting nextrip to %#llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_set_register(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vcpu*, align 8
  %11 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VM_MAXCPU, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %56

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @VM_REG_LAST, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %56

26:                                               ; preds = %20
  %27 = load %struct.vm*, %struct.vm** %6, align 8
  %28 = getelementptr inbounds %struct.vm, %struct.vm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @VMSETREG(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %26
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %56

42:                                               ; preds = %36
  %43 = load %struct.vm*, %struct.vm** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @VCPU_CTR1(%struct.vm* %43, i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.vm*, %struct.vm** %6, align 8
  %48 = getelementptr inbounds %struct.vm, %struct.vm* %47, i32 0, i32 0
  %49 = load %struct.vcpu*, %struct.vcpu** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %49, i64 %51
  store %struct.vcpu* %52, %struct.vcpu** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %55 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %42, %40, %24, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @VMSETREG(i32, i32, i32, i32) #1

declare dso_local i32 @VCPU_CTR1(%struct.vm*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
