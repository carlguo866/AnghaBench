; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_find_nomem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_find_nomem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { i32*, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_mapped_section = type { i32 }

@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*)* @find_nomem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_nomem(%struct.image_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.image_fixture*, align 8
  %4 = alloca %struct.pt_mapped_section, align 4
  %5 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %3, align 8
  %6 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %6, i32 0, i32 1
  %8 = load %struct.image_fixture*, %struct.image_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = call i32 @pt_image_find(i32* %7, %struct.pt_mapped_section* %4, i32* %11, i32 4112)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @pte_nomap, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @ptu_int_eq(i32 %13, i32 %15)
  %17 = call i32 (...) @ptu_passed()
  %18 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  ret i32 %20
}

declare dso_local i32 @pt_image_find(i32*, %struct.pt_mapped_section*, i32*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
