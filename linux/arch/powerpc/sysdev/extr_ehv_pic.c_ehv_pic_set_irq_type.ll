; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_ehv_pic.c_ehv_pic_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@ehv_pic_lock = common dso_local global i32 0, align 4
@VECPRI_POLARITY_MASK = common dso_local global i32 0, align 4
@VECPRI_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK_NOCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehv_pic_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @virq_to_hw(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @irqd_set_trigger_type(%struct.irq_data* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ehv_pic_type_to_vecpri(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @ehv_pic_lock, i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ev_int_get_config(i32 %29, i32* %7, i32* %9, i32* %10)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VECPRI_POLARITY_MASK, align 4
  %33 = call i32 @EHV_PIC_INFO(i32 %32)
  %34 = load i32, i32* @VECPRI_SENSE_MASK, align 4
  %35 = call i32 @EHV_PIC_INFO(i32 %34)
  %36 = or i32 %33, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %31, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  store i32 8, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ev_int_set_config(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @ehv_pic_lock, i64 %47)
  %49 = load i32, i32* @IRQ_SET_MASK_OK_NOCOPY, align 4
  ret i32 %49
}

declare dso_local i32 @virq_to_hw(i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @ehv_pic_type_to_vecpri(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ev_int_get_config(i32, i32*, i32*, i32*) #1

declare dso_local i32 @EHV_PIC_INFO(i32) #1

declare dso_local i32 @ev_int_set_config(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
