; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_ppa_tgt_to_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_ppa_tgt_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { i32 }
%struct.ppa_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_tgt_dev*, %struct.ppa_addr*, i32)* @nvm_ppa_tgt_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_ppa_tgt_to_dev(%struct.nvm_tgt_dev* %0, %struct.ppa_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.ppa_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ppa_addr, align 4
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %4, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %15 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i64 %17
  %19 = call i32 @nvm_map_to_dev(%struct.nvm_tgt_dev* %14, %struct.ppa_addr* %18)
  %20 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %20, i64 %22
  %24 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %25 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %27, i64 %29
  %31 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @generic_to_dev_addr(i32 %26, i32 %32)
  %34 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = bitcast %struct.ppa_addr* %23 to i8*
  %36 = bitcast %struct.ppa_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  br label %37

37:                                               ; preds = %13
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %9

40:                                               ; preds = %9
  ret void
}

declare dso_local i32 @nvm_map_to_dev(%struct.nvm_tgt_dev*, %struct.ppa_addr*) #1

declare dso_local i32 @generic_to_dev_addr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
