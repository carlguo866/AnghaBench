; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/8xx/extr_pic.c_mpc8xx_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@siu_reg = common dso_local global %struct.TYPE_2__* null, align 8
@PIC_VEC_SPURRIOUS = common dso_local global i32 0, align 4
@mpc8xx_pic_host = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc8xx_get_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @siu_reg, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = call i32 @in_be32(i32* %4)
  %6 = ashr i32 %5, 26
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @PIC_VEC_SPURRIOUS, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @mpc8xx_pic_host, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @irq_linear_revmap(i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
