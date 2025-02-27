; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c_handle_sigp_order_in_user_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c_handle_sigp_order_in_user_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"SIGP: order %u for CPU %d handled in userspace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @handle_sigp_order_in_user_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_sigp_order_in_user_space(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %73 [
    i32 135, label %18
    i32 138, label %18
    i32 139, label %18
    i32 141, label %18
    i32 134, label %18
    i32 131, label %19
    i32 130, label %25
    i32 128, label %31
    i32 129, label %37
    i32 133, label %43
    i32 132, label %49
    i32 136, label %55
    i32 137, label %61
    i32 140, label %67
  ]

18:                                               ; preds = %16, %16, %16, %16, %16
  store i32 0, i32* %4, align 4
  br label %84

19:                                               ; preds = %16
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %79

25:                                               ; preds = %16
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %79

31:                                               ; preds = %16
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %79

37:                                               ; preds = %16
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %79

43:                                               ; preds = %16
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %79

49:                                               ; preds = %16
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %79

55:                                               ; preds = %16
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %79

61:                                               ; preds = %16
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %79

67:                                               ; preds = %16
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %79

73:                                               ; preds = %16
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %67, %61, %55, %49, %43, %37, %31, %25, %19
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %80, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %18, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
