; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_db_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_db_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"DB IRQ detected %#08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt_ntb_dev*, i32)* @idt_db_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt_db_isr(%struct.idt_ntb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %6 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %13 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %12, i32 0, i32 0
  %14 = call i32 @ntb_db_event(%struct.TYPE_4__* %13, i32 0)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ntb_db_event(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
