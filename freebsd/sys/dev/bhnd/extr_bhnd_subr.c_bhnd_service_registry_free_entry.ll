; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_service_registry_free_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_service_registry_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_service_entry = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"provider has active references\00", align 1
@M_BHND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bhnd_service_entry*)* @bhnd_service_registry_free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bhnd_service_registry_free_entry(%struct.bhnd_service_entry* %0) #0 {
  %2 = alloca %struct.bhnd_service_entry*, align 8
  store %struct.bhnd_service_entry* %0, %struct.bhnd_service_entry** %2, align 8
  %3 = load %struct.bhnd_service_entry*, %struct.bhnd_service_entry** %2, align 8
  %4 = getelementptr inbounds %struct.bhnd_service_entry, %struct.bhnd_service_entry* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bhnd_service_entry*, %struct.bhnd_service_entry** %2, align 8
  %10 = load i32, i32* @M_BHND, align 4
  %11 = call i32 @free(%struct.bhnd_service_entry* %9, i32 %10)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(%struct.bhnd_service_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
