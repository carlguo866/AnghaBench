; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"reg %04x <- %02x\00", align 1
@ENE_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*, i32, i32)* @ene_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_write_reg(%struct.ene_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ene_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @dbg_regs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load %struct.ene_device*, %struct.ene_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ene_set_reg_addr(%struct.ene_device* %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ene_device*, %struct.ene_device** %4, align 8
  %15 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ENE_IO, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @dbg_regs(i8*, i32, i32) #1

declare dso_local i32 @ene_set_reg_addr(%struct.ene_device*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
