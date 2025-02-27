; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_synch_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_mmu_ps3.c_mps3_pte_synch_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mps3_vas_id = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@ADDR_API_SHFT64 = common dso_local global i32 0, align 4
@ADDR_PIDX_SHFT = common dso_local global i32 0, align 4
@LPTE_VALID = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvo_entry*)* @mps3_pte_synch_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps3_pte_synch_locked(%struct.pvo_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvo_entry*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.pvo_entry* %0, %struct.pvo_entry** %3, align 8
  %6 = call i32 (...) @PTESYNC()
  %7 = load i32, i32* @mps3_vas_id, align 4
  %8 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %9 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = and i64 %12, -4
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %19 = call i32 @lv1_read_htab_entries(i32 %7, i32 %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %5)
  %20 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %21 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %31 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ADDR_API_SHFT64, align 4
  %34 = load i32, i32* @ADDR_PIDX_SHFT, align 4
  %35 = sub nsw i32 %33, %34
  %36 = ashr i32 %32, %35
  %37 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %29, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %68

41:                                               ; preds = %1
  %42 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %43 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LPTE_VALID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %68

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.pvo_entry*, %struct.pvo_entry** %3, align 8
  %57 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 3
  %61 = sub nsw i32 3, %60
  %62 = mul nsw i32 %61, 16
  %63 = ashr i32 %55, %62
  %64 = load i32, i32* @LPTE_CHG, align 4
  %65 = load i32, i32* @LPTE_REF, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %54, %53, %40
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @PTESYNC(...) #1

declare dso_local i32 @lv1_read_htab_entries(i32, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
