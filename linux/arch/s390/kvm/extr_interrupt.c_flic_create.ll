; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_flic_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_flic_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_device* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, i32)* @flic_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flic_create(%struct.kvm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %7 = icmp ne %struct.kvm_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.kvm_device*, %struct.kvm_device** %16, align 8
  %18 = icmp ne %struct.kvm_device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %11
  %23 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %24 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.kvm_device* %23, %struct.kvm_device** %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
