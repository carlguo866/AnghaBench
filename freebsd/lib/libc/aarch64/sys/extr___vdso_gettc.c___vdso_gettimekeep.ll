; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/aarch64/sys/extr___vdso_gettc.c___vdso_gettimekeep.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/aarch64/sys/extr___vdso_gettc.c___vdso_gettimekeep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_timekeep = type { i32 }

@AT_TIMEKEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vdso_gettimekeep(%struct.vdso_timekeep** %0) #0 {
  %2 = alloca %struct.vdso_timekeep**, align 8
  store %struct.vdso_timekeep** %0, %struct.vdso_timekeep*** %2, align 8
  %3 = load i32, i32* @AT_TIMEKEEP, align 4
  %4 = load %struct.vdso_timekeep**, %struct.vdso_timekeep*** %2, align 8
  %5 = call i32 @_elf_aux_info(i32 %3, %struct.vdso_timekeep** %4, i32 8)
  ret i32 %5
}

declare dso_local i32 @_elf_aux_info(i32, %struct.vdso_timekeep**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
