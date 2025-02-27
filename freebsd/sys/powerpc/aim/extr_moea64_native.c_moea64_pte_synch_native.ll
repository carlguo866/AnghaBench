; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_synch_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_synch_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpte = type { i32, i32 }
%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@moea64_pteg_table = common dso_local global %struct.lpte* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@moea64_eviction_lock = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @moea64_pte_synch_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea64_pte_synch_native(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca %struct.lpte*, align 8
  %7 = alloca %struct.lpte, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  %9 = load %struct.lpte*, %struct.lpte** @moea64_pteg_table, align 8
  %10 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %11 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i64 %14
  store %struct.lpte* %15, %struct.lpte** %6, align 8
  %16 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %17 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @PMAP_LOCK_ASSERT(i32 %18, i32 %19)
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %22 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %21, %struct.lpte* %7)
  %23 = call i32 @rw_rlock(i32* @moea64_eviction_lock)
  %24 = load %struct.lpte*, %struct.lpte** %6, align 8
  %25 = getelementptr inbounds %struct.lpte, %struct.lpte* %24, i32 0, i32 0
  %26 = load volatile i32, i32* %25, align 4
  %27 = call i32 @be64toh(i32 %26)
  %28 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = getelementptr inbounds %struct.lpte, %struct.lpte* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  store i32 -1, i32* %3, align 4
  br label %49

37:                                               ; preds = %2
  %38 = call i32 (...) @PTESYNC()
  %39 = load %struct.lpte*, %struct.lpte** %6, align 8
  %40 = getelementptr inbounds %struct.lpte, %struct.lpte* %39, i32 0, i32 1
  %41 = load volatile i32, i32* %40, align 4
  %42 = call i32 @be64toh(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @LPTE_REF, align 4
  %46 = load i32, i32* @LPTE_CHG, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @PTESYNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
