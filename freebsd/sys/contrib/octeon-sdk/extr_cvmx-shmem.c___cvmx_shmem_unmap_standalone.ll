; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_unmap_standalone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-shmem.c___cvmx_shmem_unmap_standalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_shmem_dscptr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvmx_shmem_dscptr*)* @__cvmx_shmem_unmap_standalone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_shmem_unmap_standalone(%struct.cvmx_shmem_dscptr* %0) #0 {
  %2 = alloca %struct.cvmx_shmem_dscptr*, align 8
  %3 = alloca i32, align 4
  store %struct.cvmx_shmem_dscptr* %0, %struct.cvmx_shmem_dscptr** %2, align 8
  %4 = load %struct.cvmx_shmem_dscptr*, %struct.cvmx_shmem_dscptr** %2, align 8
  %5 = getelementptr inbounds %struct.cvmx_shmem_dscptr, %struct.cvmx_shmem_dscptr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @CAST64(i32 %6)
  %8 = call i32 @cvmx_tlb_lookup(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @cvmx_tlb_free_runtime_entry(i32 %9)
  ret void
}

declare dso_local i32 @cvmx_tlb_lookup(i32) #1

declare dso_local i32 @CAST64(i32) #1

declare dso_local i32 @cvmx_tlb_free_runtime_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
