; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.c_asd_read_reg_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.c_asd_read_reg_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_read_reg_string(%struct.asd_ha_struct* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  br label %17

17:                                               ; preds = %25, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @__asd_read_reg_byte(%struct.asd_ha_struct* %21, i32 %22)
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %34 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__asd_read_reg_byte(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
