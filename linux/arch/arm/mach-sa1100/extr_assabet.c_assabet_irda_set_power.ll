; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_assabet.c_assabet_irda_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_assabet.c_assabet_irda_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@assabet_irda_set_power.bcr_state = internal global [4 x i32] [i32 129, i32 129, i32 128, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @assabet_irda_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assabet_irda_set_power(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* @assabet_irda_set_power.bcr_state, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ASSABET_BCR_frob(i32 129, i32 %11)
  br label %13

13:                                               ; preds = %7, %2
  ret i32 0
}

declare dso_local i32 @ASSABET_BCR_frob(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
