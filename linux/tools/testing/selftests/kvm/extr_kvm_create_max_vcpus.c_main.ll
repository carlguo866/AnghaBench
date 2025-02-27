; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/extr_kvm_create_max_vcpus.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/extr_kvm_create_max_vcpus.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KVM_CAP_MAX_VCPU_ID = common dso_local global i32 0, align 4
@KVM_CAP_MAX_VCPUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"KVM_CAP_MAX_VCPU_ID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"KVM_CAP_MAX_VCPUS: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"KVM_MAX_VCPU_ID (%d) must be at least as large as KVM_MAX_VCPUS (%d).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @KVM_CAP_MAX_VCPU_ID, align 4
  %9 = call i32 @kvm_check_cap(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @KVM_CAP_MAX_VCPUS, align 4
  %11 = call i32 @kvm_check_cap(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @TEST_ASSERT(i32 %24, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @test_vcpu_creation(i32 0, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @test_vcpu_creation(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %20
  ret i32 0
}

declare dso_local i32 @kvm_check_cap(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i32) #1

declare dso_local i32 @test_vcpu_creation(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
