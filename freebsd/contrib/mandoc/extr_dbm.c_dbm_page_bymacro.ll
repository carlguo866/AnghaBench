; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_page_bymacro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_page_bymacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_match = type { i32 }

@MACRO_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbm_page_bymacro(i64 %0, %struct.dbm_match* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dbm_match*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.dbm_match* %1, %struct.dbm_match** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp sge i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @MACRO_MAX, align 8
  %11 = icmp slt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.dbm_match*, %struct.dbm_match** %4, align 8
  %15 = icmp ne %struct.dbm_match* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.dbm_match*, %struct.dbm_match** %4, align 8
  %20 = call i32 @page_bymacro(i64 %18, %struct.dbm_match* %19)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @page_bymacro(i64, %struct.dbm_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
