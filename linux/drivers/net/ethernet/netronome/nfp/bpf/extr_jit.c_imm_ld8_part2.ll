; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_imm_ld8_part2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_imm_ld8_part2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @imm_ld8_part2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_ld8_part2(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %9 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %10 = call %struct.nfp_insn_meta* @nfp_meta_prev(%struct.nfp_insn_meta* %9)
  store %struct.nfp_insn_meta* %10, %struct.nfp_insn_meta** %5, align 8
  %11 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %8, align 4
  %16 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @reg_both(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @wrp_immed(%struct.nfp_prog* %24, i32 %26, i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @reg_both(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @reg_a(i32 %37)
  %39 = call i32 @wrp_mov(%struct.nfp_prog* %33, i32 %36, i32 %38)
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @reg_both(i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @wrp_immed(%struct.nfp_prog* %41, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %32
  ret i32 0
}

declare dso_local %struct.nfp_insn_meta* @nfp_meta_prev(%struct.nfp_insn_meta*) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i64) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_a(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
