; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_ST.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_flush_dirty_ST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dirty_regb = common dso_local global i32 0, align 4
@KRREG_ST = common dso_local global i32 0, align 4
@hostreg_r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tr_flush_dirty_ST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_flush_dirty_ST() #0 {
  %1 = load i32, i32* @dirty_regb, align 4
  %2 = load i32, i32* @KRREG_ST, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %16

6:                                                ; preds = %0
  %7 = call i32 @EOP_BIC_IMM(i32 6, i32 6, i32 0, i32 15)
  %8 = call i32 @EOP_MRS(i32 1)
  %9 = call i32 @EOP_ORR_REG_LSR(i32 6, i32 6, i32 1, i32 28)
  %10 = load i32, i32* @KRREG_ST, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @dirty_regb, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @dirty_regb, align 4
  %14 = load i32*, i32** @hostreg_r, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 -1, i32* %15, align 4
  br label %16

16:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @EOP_BIC_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @EOP_MRS(i32) #1

declare dso_local i32 @EOP_ORR_REG_LSR(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
