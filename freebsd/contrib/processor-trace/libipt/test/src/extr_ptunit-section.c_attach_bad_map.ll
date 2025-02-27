; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_attach_bad_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-section.c_attach_bad_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_fixture = type { i32, i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_image_section_cache = type { i32 }

@__const.attach_bad_map.bytes = private unnamed_addr constant [4 x i32] [i32 204, i32 2, i32 4, i32 6], align 16
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section_fixture*)* @attach_bad_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_bad_map(%struct.section_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.section_fixture*, align 8
  %4 = alloca %struct.pt_image_section_cache, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.section_fixture* %0, %struct.section_fixture** %3, align 8
  %7 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i32]* @__const.attach_bad_map.bytes to i8*), i64 16, i1 false)
  %8 = load i32, i32* @pte_eos, align 4
  %9 = sub nsw i32 0, %8
  %10 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %13 = call i32 @sfix_write(%struct.section_fixture* %11, i32* %12)
  %14 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %15 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %14, i32 0, i32 0
  %16 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pt_mk_section(i32* %15, i32 %18, i32 1, i32 3)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ptu_int_eq(i32 %20, i32 0)
  %22 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_ptr(i32 %24)
  %26 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pt_section_attach(i32 %28, %struct.pt_image_section_cache* %4)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ptu_int_eq(i32 %30, i32 0)
  %32 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %33 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pt_section_map(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @pte_eos, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @ptu_int_eq(i32 %36, i32 %38)
  %40 = load %struct.section_fixture*, %struct.section_fixture** %3, align 8
  %41 = getelementptr inbounds %struct.section_fixture, %struct.section_fixture* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pt_section_detach(i32 %42, %struct.pt_image_section_cache* %4)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ptu_int_eq(i32 %44, i32 0)
  %46 = call i32 (...) @ptu_passed()
  %47 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sfix_write(%struct.section_fixture*, i32*) #2

declare dso_local i32 @pt_mk_section(i32*, i32, i32, i32) #2

declare dso_local i32 @ptu_int_eq(i32, i32) #2

declare dso_local i32 @ptu_ptr(i32) #2

declare dso_local i32 @pt_section_attach(i32, %struct.pt_image_section_cache*) #2

declare dso_local i32 @pt_section_map(i32) #2

declare dso_local i32 @pt_section_detach(i32, %struct.pt_image_section_cache*) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
