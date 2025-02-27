; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_same.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.pmap_pkru_range = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@PT_X86 = common dso_local global i64 0, align 8
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_PKU = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64)* @pmap_pkru_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pkru_same(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pmap_pkru_range*, align 8
  %9 = alloca %struct.pmap_pkru_range*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_6__* %11, i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PT_X86, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @cpu_stdext_feature2, align 4
  %21 = load i32, i32* @CPUID_STDEXT2_PKU, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %19, %3
  store i32 1, i32* %4, align 4
  br label %76

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %10, align 8
  store %struct.pmap_pkru_range* null, %struct.pmap_pkru_range** %9, align 8
  br label %36

36:                                               ; preds = %70, %57, %29
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %10, align 8
  %44 = call %struct.pmap_pkru_range* @rangeset_lookup(i32* %42, i64 %43)
  store %struct.pmap_pkru_range* %44, %struct.pmap_pkru_range** %8, align 8
  %45 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %8, align 8
  %46 = icmp eq %struct.pmap_pkru_range* %45, null
  %47 = zext i1 %46 to i32
  %48 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %9, align 8
  %49 = icmp eq %struct.pmap_pkru_range* %48, null
  %50 = zext i1 %49 to i32
  %51 = xor i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %76

54:                                               ; preds = %40
  %55 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %8, align 8
  %56 = icmp eq %struct.pmap_pkru_range* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %10, align 8
  br label %36

61:                                               ; preds = %54
  %62 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %9, align 8
  %63 = getelementptr inbounds %struct.pmap_pkru_range, %struct.pmap_pkru_range* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %8, align 8
  %66 = getelementptr inbounds %struct.pmap_pkru_range, %struct.pmap_pkru_range* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %76

70:                                               ; preds = %61
  %71 = load %struct.pmap_pkru_range*, %struct.pmap_pkru_range** %8, align 8
  %72 = getelementptr inbounds %struct.pmap_pkru_range, %struct.pmap_pkru_range* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %10, align 8
  br label %36

75:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %69, %53, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.pmap_pkru_range* @rangeset_lookup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
