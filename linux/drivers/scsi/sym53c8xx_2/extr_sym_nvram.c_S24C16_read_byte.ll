; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i32*, i32, i32*, i32*)* @S24C16_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @S24C16_read_byte(%struct.sym_device* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.sym_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %29, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.sym_device*, %struct.sym_device** %6, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @S24C16_do_bit(%struct.sym_device* %18, i32* %12, i32 1, i32* %19)
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 1
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 7, %23
  %25 = shl i32 %22, %24
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.sym_device*, %struct.sym_device** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @S24C16_write_ack(%struct.sym_device* %33, i32 %34, i32* %35, i32* %36)
  ret void
}

declare dso_local i32 @S24C16_do_bit(%struct.sym_device*, i32*, i32, i32*) #1

declare dso_local i32 @S24C16_write_ack(%struct.sym_device*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
