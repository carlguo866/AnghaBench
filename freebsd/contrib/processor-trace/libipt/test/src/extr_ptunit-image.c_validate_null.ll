; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_validate_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_validate_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_mapped_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @validate_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_null(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca %struct.pt_mapped_section, align 4
  %5 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %6 = call i32 @pt_image_validate(i32* null, %struct.pt_mapped_section* %4, i32 4100, i32 10)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @pte_internal, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @ptu_int_eq(i32 %7, i32 %9)
  %11 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %11, i32 0, i32 0
  %13 = call i32 @pt_image_validate(i32* %12, %struct.pt_mapped_section* null, i32 4100, i32 10)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @ptu_int_eq(i32 %14, i32 %16)
  %18 = call i32 (...) @ptu_passed()
  %19 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

declare dso_local i32 @pt_image_validate(i32*, %struct.pt_mapped_section*, i32, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
