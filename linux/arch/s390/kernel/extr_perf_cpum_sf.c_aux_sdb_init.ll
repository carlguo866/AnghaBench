; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_sdb_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_sdb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_trailer_entry = type { i32, i32 }

@tod_clock_base = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @aux_sdb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_sdb_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hws_trailer_entry*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @trailer_entry_ptr(i64 %4)
  %6 = inttoptr i64 %5 to %struct.hws_trailer_entry*
  store %struct.hws_trailer_entry* %6, %struct.hws_trailer_entry** %3, align 8
  %7 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %3, align 8
  %8 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %3, align 8
  %10 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %9, i32 0, i32 1
  %11 = load i32*, i32** @tod_clock_base, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = call i32 @memcpy(i32* %10, i32* %12, i32 8)
  ret void
}

declare dso_local i64 @trailer_entry_ptr(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
