; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_read_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_read_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_mapped_section = type { i32 }
%struct.pt_msec_cache = type { i32 }
%struct.pt_image = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_null() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_mapped_section*, align 8
  %3 = alloca %struct.pt_msec_cache, align 4
  %4 = alloca %struct.pt_image, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @pt_msec_cache_read(%struct.pt_msec_cache* null, %struct.pt_mapped_section** %2, %struct.pt_image* %4, i64 0)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @pte_internal, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @ptu_int_eq(i32 %7, i32 %9)
  %11 = call i32 @pt_msec_cache_read(%struct.pt_msec_cache* %3, %struct.pt_mapped_section** null, %struct.pt_image* %4, i64 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @ptu_int_eq(i32 %12, i32 %14)
  %16 = call i32 @pt_msec_cache_read(%struct.pt_msec_cache* %3, %struct.pt_mapped_section** %2, %struct.pt_image* null, i64 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @ptu_int_eq(i32 %17, i32 %19)
  %21 = call i32 (...) @ptu_passed()
  %22 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  ret i32 %24
}

declare dso_local i32 @pt_msec_cache_read(%struct.pt_msec_cache*, %struct.pt_mapped_section**, %struct.pt_image*, i64) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
