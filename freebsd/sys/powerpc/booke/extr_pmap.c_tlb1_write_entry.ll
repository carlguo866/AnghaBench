; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_write_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tlbwrite_args = type { i32, %struct.TYPE_3__* }

@_TLB_ENTRY_SHARED = common dso_local global i32 0, align 4
@smp_started = common dso_local global i64 0, align 8
@tlb1_write_entry_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @tlb1_write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlb1_write_entry(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlbwrite_args, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.tlbwrite_args, %struct.tlbwrite_args* %5, i32 0, i32 1
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.tlbwrite_args, %struct.tlbwrite_args* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = call i32 (...) @mfmsr()
  store i32 %11, i32* %6, align 4
  call void asm sideeffect "wrteei 0", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %12 = call i32 @tlb1_write_entry_int(%struct.tlbwrite_args* %5)
  %13 = load i32, i32* %6, align 4
  call void asm sideeffect "wrtee $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %13) #2, !srcloc !3
  ret void
}

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @tlb1_write_entry_int(%struct.tlbwrite_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 774}
!3 = !{i32 837}
