; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_init_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_init_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_null() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @pt_iscache_init(i32* null, i32* null)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @pte_internal, align 4
  %6 = sub nsw i32 0, %5
  %7 = call i32 @ptu_int_eq(i32 %4, i32 %6)
  %8 = call i32 (...) @ptu_passed()
  %9 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  ret i32 %11
}

declare dso_local i32 @pt_iscache_init(i32*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
