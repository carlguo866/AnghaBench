; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocores_i2c = type { i32 }

@OCI2C_STATUS = common dso_local global i32 0, align 4
@OCORES_FLAG_BROKEN_IRQ = common dso_local global i32 0, align 4
@OCI2C_STAT_IF = common dso_local global i32 0, align 4
@OCI2C_STAT_BUSY = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ocores_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocores_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ocores_i2c*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ocores_i2c*
  store %struct.ocores_i2c* %9, %struct.ocores_i2c** %6, align 8
  %10 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %11 = load i32, i32* @OCI2C_STATUS, align 4
  %12 = call i32 @oc_getreg(%struct.ocores_i2c* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %14 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OCORES_FLAG_BROKEN_IRQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @OCI2C_STAT_IF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @OCI2C_STAT_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %24, %19
  br label %40

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @OCI2C_STAT_IF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %31
  %41 = load %struct.ocores_i2c*, %struct.ocores_i2c** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ocores_process(%struct.ocores_i2c* %41, i32 %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %37, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @oc_getreg(%struct.ocores_i2c*, i32) #1

declare dso_local i32 @ocores_process(%struct.ocores_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
