; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_relocate_section_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_sunos_relocate_section_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i32 }
%struct.section_table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.so_list*, %struct.section_table*)* @sunos_relocate_section_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunos_relocate_section_addresses(%struct.so_list* %0, %struct.section_table* %1) #0 {
  %3 = alloca %struct.so_list*, align 8
  %4 = alloca %struct.section_table*, align 8
  store %struct.so_list* %0, %struct.so_list** %3, align 8
  store %struct.section_table* %1, %struct.section_table** %4, align 8
  %5 = load %struct.so_list*, %struct.so_list** %3, align 8
  %6 = call i64 @LM_ADDR(%struct.so_list* %5)
  %7 = load %struct.section_table*, %struct.section_table** %4, align 8
  %8 = getelementptr inbounds %struct.section_table, %struct.section_table* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %6
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.so_list*, %struct.so_list** %3, align 8
  %14 = call i64 @LM_ADDR(%struct.so_list* %13)
  %15 = load %struct.section_table*, %struct.section_table** %4, align 8
  %16 = getelementptr inbounds %struct.section_table, %struct.section_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  ret void
}

declare dso_local i64 @LM_ADDR(%struct.so_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
