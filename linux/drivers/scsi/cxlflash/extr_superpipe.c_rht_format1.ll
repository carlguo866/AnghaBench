; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_rht_format1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_superpipe.c_rht_format1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisl_rht_entry = type { i32 }
%struct.sisl_rht_entry_f1 = type { i32, i32, i32, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sisl_rht_entry*, i32, i32, i32)* @rht_format1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rht_format1(%struct.sisl_rht_entry* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sisl_rht_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sisl_rht_entry_f1, align 8
  %10 = alloca %struct.sisl_rht_entry_f1*, align 8
  store %struct.sisl_rht_entry* %0, %struct.sisl_rht_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = bitcast %struct.sisl_rht_entry_f1* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.sisl_rht_entry*, %struct.sisl_rht_entry** %5, align 8
  %13 = bitcast %struct.sisl_rht_entry* %12 to %struct.sisl_rht_entry_f1*
  store %struct.sisl_rht_entry_f1* %13, %struct.sisl_rht_entry_f1** %10, align 8
  %14 = load %struct.sisl_rht_entry_f1*, %struct.sisl_rht_entry_f1** %10, align 8
  %15 = call i32 @memset(%struct.sisl_rht_entry_f1* %14, i32 0, i32 32)
  %16 = call i8* @SISL_RHT_FP(i32 1, i32 0)
  %17 = load %struct.sisl_rht_entry_f1*, %struct.sisl_rht_entry_f1** %10, align 8
  %18 = getelementptr inbounds %struct.sisl_rht_entry_f1, %struct.sisl_rht_entry_f1* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = call i32 (...) @dma_wmb()
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.sisl_rht_entry_f1*, %struct.sisl_rht_entry_f1** %10, align 8
  %22 = getelementptr inbounds %struct.sisl_rht_entry_f1, %struct.sisl_rht_entry_f1* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @dma_wmb()
  %24 = getelementptr inbounds %struct.sisl_rht_entry_f1, %struct.sisl_rht_entry_f1* %9, i32 0, i32 0
  store i32 128, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @SISL_RHT_FP(i32 1, i32 %25)
  %27 = getelementptr inbounds %struct.sisl_rht_entry_f1, %struct.sisl_rht_entry_f1* %9, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.sisl_rht_entry_f1, %struct.sisl_rht_entry_f1* %9, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.sisl_rht_entry_f1, %struct.sisl_rht_entry_f1* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sisl_rht_entry_f1*, %struct.sisl_rht_entry_f1** %10, align 8
  %33 = getelementptr inbounds %struct.sisl_rht_entry_f1, %struct.sisl_rht_entry_f1* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = call i32 (...) @dma_wmb()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.sisl_rht_entry_f1*, i32, i32) #2

declare dso_local i8* @SISL_RHT_FP(i32, i32) #2

declare dso_local i32 @dma_wmb(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
