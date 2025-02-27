; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_check_permissions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_check_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@EFER_SVME = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_check_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_check_permissions(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %4 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %5 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @EFER_SVME, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 0
  %15 = call i32 @is_paging(%struct.TYPE_10__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 0
  %20 = load i32, i32* @UD_VECTOR, align 4
  %21 = call i32 @kvm_queue_exception(%struct.TYPE_10__* %19, i32 %20)
  store i32 1, i32* %2, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 0
  %33 = call i32 @kvm_inject_gp(%struct.TYPE_10__* %32, i32 0)
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %30, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @is_paging(%struct.TYPE_10__*) #1

declare dso_local i32 @kvm_queue_exception(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kvm_inject_gp(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
