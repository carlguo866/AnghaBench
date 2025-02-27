; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, i64, i64, i32*)* @idt_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_eeprom_read(%struct.idt_89hpesx_dev* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.idt_89hpesx_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %6, align 8
  %18 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @idt_eeprom_read_byte(%struct.idt_89hpesx_dev* %20, i64 %21, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %6, align 8
  %27 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %40

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %12

39:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idt_eeprom_read_byte(%struct.idt_89hpesx_dev*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
